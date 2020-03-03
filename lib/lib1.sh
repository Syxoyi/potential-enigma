#!/bin/bash
#cd $(dirname $0)
#====================================================
#. $BASEDIR/cinf.sh
#====================================================
Description(){
	echo -en "\e[30;3;46m"
	cat << EOF

Description:
# -------------------------------------------- Config ---------------------------------------------
CURL=false
# ============= локальный bark
HOST=localhost
PORT=8070
# ============= удаленный bark (например для чеков)
IP="10.0.50.107"
PORTkaf=9092
# ============= topics
Topic_in="maksim-in2"
Topic_out="resp-new2"
k=""
# ============= удаленный bark (например для новых доков)
IP2="10.0.50.107"
PORTkaf2=9092
# ============= topics
Topic_in2="maksim-in"
Topic_out2="resp-new"


EOF
	echo -en "\e[0m\n\n"
}
#====================================================
#CURL=false
#HOST=localhost
#PORT=8070

# -------------------------------------------- Procedure ---------------------------------------------

# ============= Преобразование даты
kass_to_egais_time() {
if [ -z "$1" ]; then
        echo "usage: $0 datestring"
        exit 9
fi

for i in $(seq 0 4)
do
        let k=2*$i+1
        a[$i]=$(expr substr $1 $k 2)
done
echo "20${a[2]}-${a[1]}-${a[0]}"
}

# ============= Формирование ЧекВ3 в json
# create_json xml date type
create_json(){
	FAILE=$(cat /proc/sys/kernel/random/uuid)".tmp"  # собираемый json для кафки
	FSRARID="010000000123"
	DATE="$2"
		echo -n "{\"certificate\" : \"MIIKijCCCjegAwIBA\",\"sign\" : \"LxjnaU21YjjmmYed/xyzf4UW\",\"type\" : \"$3\",\"data\" : \"" > $FAILE
		base64 -w 0 $1 >> $FAILE
		echo "\",\"date\" : \"$DATE\",\"fsrarid\" : \"$FSRARID\",\"uri\" : \"$FSRARID-$RANDOM-d367-45d1-8634-03ebf4f824de\"}" >> $FAILE
	cat "$FAILE"
	rm $FAILE
}

# ============= Формирование ЧекВ3 в json
Che_V3(){
	type_create_json="ChequeV3"
	#DATE="2020-01-01T23:59:59"
	DATE=$(xmllint --xpath "//*[local-name()='Date']/text()" $1 | cut -d'T' -f1)
	create_json "$1" "$DATE" "$type_create_json"
}

# ============= Формирование ЧекЕГАИС в json
EgaCheq(){
	type_create_json="Cheque"
	DATE=$(xmllint --xpath 'string(//@datetime)' $1)
	DATE=$(kass_to_egais_time $DATE)
	create_json "$1" "$DATE" "$type_create_json"
}

KafkaMess()
{
	num=$(kafkacat -C -b $IP:$PORTkaf -t $Topic_out -o end -e 2>&1| grep -Eo --color "offset [[:digit:]]*"| cut -d' ' -f2)
	kafkacat -P -b $IP:$PORTkaf -t $Topic_in $1
	ans=$(kafkacat -C -b $IP:$PORTkaf -t $Topic_out -o $num -e)
}
# ============= Формирование новых доков в json
NewDocJson()
{
NDpath=$1
uuid=$(uuidgen)
psevdoc=$(grep -Eo 'DocId>.*' $NDpath);DocId=$(echo ${psevdoc:6:-11})

psevtyp=$(grep -Eo 'DocType>.*' $NDpath);DocTyppe=$(echo ${psevtyp:8:-13})
psevfsrar=$(grep -Eo 'shipperID>.*' $NDpath);FSRAR_ID=$(echo ${psevfsrar:10:-15})

n1=$(echo -n "{\"id\" : \"${uuid}.${DocId}@$Topic_in2\",\"content\":\"")
n2=$(cat ${file} | tr -d '\n'| sed -E 's/> *</></g'| sed -E 's/\"/\\\"/g')
n3=$(echo "\",\"property\" : {\"respTopic\" : \"$Topic_out2\",\"docType\" : \"$DocTyppe\",\"docId\" : \"${DocId}\",\"fsrarId\" : \"$FSRAR_ID\"}}")

file="FRAILE"
echo "$n1$n2$n3" > ${file}

num=$(kafkacat -C -b $IP2:$PORTkaf2 -t $Topic_out2 -o end -e 2>&1| grep -Eo --color "offset [[:digit:]]*"| cut -d' ' -f2)
kafkacat -P -b $IP2:$PORTkaf2 -t $Topic_in2 $file
ans=$(kafkacat -C -b $IP2:$PORTkaf2 -t $Topic_out2 -o $num -e)

rm FRAILE
}

# ============= Цепочки

proc_Qrest(){

	# proc_Qrest Owner Form2
	# proc_Qrest 030000424092 FB-1
		[ "$#" -ne "2" ] && echo "error: proc_Qrest 030000424092 FB-1" && exit 1
		patternQrest1='<?xml version="1.0" encoding="UTF-8"?><ns:Documents Version="1.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ns="http://fsrar.ru/WEGAIS/WB_DOC_SINGLE_01" xmlns:qp="http://fsrar.ru/WEGAIS/QueryParameters" ><ns:Owner><ns:FSRAR_ID>'$1'</ns:FSRAR_ID></ns:Owner><ns:Document><ns:QueryRestBCode><qp:Parameters><qp:Parameter><qp:Name>ФОРМА2</qp:Name><qp:Value>'$2'</qp:Value></qp:Parameter></qp:Parameters></ns:QueryRestBCode></ns:Document></ns:Documents>'
		echo $patternQrest1

}

QueryRestBCode(){
	if $CURL
	then
		CountRestBCode=$(proc_Qrest $1 $2 | curl -F file=@- http://$HOST:$PORT/wb 2>/dev/null | grep -c "<ce:amc>")
	else
		CountRestBCode=$(proc_Qrest $1 $2 | nc -N $HOST $PORT | grep -c "<ce:amc>")
	fi

	if [ "$CountRestBCode" -eq "$3" ]
	then
		echo "OK $ucr; Остаток на 3 рег по форме [$2] у [$1]: [$CountRestBCode] ед."
	else
		echo "ERROR $ucr; Остаток на 3 рег по форме [$2] у [$1]: [$CountRestBCode] ед. Ожидаем [$3] ед."
		exit 1
	fi
}

Chain() 
{
	for file in $(ls ${1}/* | grep '.xml$' | sort -V)
	do
		ans=""
		if ! echo $file | grep "QR.xml" -q 
		then
			if echo $file | grep -q '<ns:ChequeV3>'  ${file}
			then
AAAA=$RANDOM
				Che_V3 ${file}  | tee $BASEDIR/lib/log/$AAAA > mess
				NDpath=${file}
				file="mess"
echo "$AAAA"
				KafkaMess $file
			elif echo $file | grep -q '<Cheque address='  ${file}
			then
				EgaCheq ${file} > mess
				NDpath=${file}
				file="mess"
				KafkaMess $file
			elif [[ "$3" == 'k' ]] && grep -E -q 'I(I|E|P)(A|I)(M|)' ${file}
			then 
				#if echo $file | 
				#then
				NewDocJson $file
				#fi
			elif $CURL
			then
				ans=$(curl -F file=@${file} http://$HOST:$PORT/wb 2>/dev/null)
			else
				ans=$(nc -N $HOST $PORT < $file)
			fi
		fi
		Norm ${file} ${NDpath}
	done
}

StateCheck2(){
	if (echo "$ans" | grep -q "<StateCheck>2")
	then 
		echo "OK $ucr; StateCheck 2"
#		echo -e "\n\n\nПроверка квитанций: $ans\n\n"
	else
		echo "ERROR $ucr; Ожидаем: StateCheck 2"
		echo "$ans"
		exit 1
	fi
}

StateCheck1(){
	if (echo "$ans" | grep -A1 "<StateCheck>1" | grep -q "$1")
	then 
		echo "OK $ucr; StateCheck 1; Проверено: $1"
#		echo -e "\n\n\nПроверка квитанций: $ans\n\n"
	else
		echo "ERROR $ucr; Ожидаем: $1"
		echo "$ans"
		exit 1
	fi
}

StateCheck0(){
	if (echo "$ans" | grep -q "<StateCheck>0")
	then
		echo "OK $ucr"
#		echo -e "\n\n\nПроверка квитанций: $ans\n\n"
	else
		echo "ERROR $ucr; Ожидаем: StateCheck 0"
		echo "$ans"
		exit 1
	fi
}

KafkaErr() #?
{
findErr2=$(echo "$ans"|jq '.') #???
#-----------------Проверка типа

doctype_prov=$(echo "$ans" | jq -r '.doctype')
if [[ "$doctype_prov" == 'chequeV3' ]]
then
	echo -n "ОК: Тип документа $doctype_prov"
elif [[ "$doctype_prov" == 'cheque' ]]
then
	echo -n "ОК: Тип документа $doctype_prov"
else
	echo -e "ERROR: Некорректный тип документа: $doctype_prov \nAnswer: $findErr2"
	exit 1

fi

#-----------------Проверка return 
return_prov=$(echo "$ans"|jq -r '.return')
if [[ "$return_prov" == '0' ]]
then 
	echo -n ". Чек продажи."
elif [[ "$return_prov" == '1' ]]
then 
	echo -n ". Чук возврата."
else 
	echo ". Некорректный \"return\" $findErr2"
	exit 1
fi

#----------------Проверка на наличие алккодов
alccd_prov=$(echo "$ans"|jq -r '.content.position[].alccode')
if [[ "$alccd_prov" == '' ]]
then echo " Отсутвуют алккоды.";exit 1
else echo -n " Ок: алккоды есть."
fi

FB_prov=$(echo "$ans"|jq -r '.content.position[].form')
if [[ "$FB_prov" == '' ]]
then echo " Отсутвуют справки Б."; exit 1
else echo -n " Ок: Справки Б есть."
fi

barcodes_prov=$(echo "$ans"|jq -r '.content.position[].barcode')
if [[ "$barcodes_prov" == '' ]]
then echo " Отсутвуют марки."
else echo " Ок: марки есть."
fi

echo "$ans"


#if (echo "$ans" | grep -A1 -q "doctype")
#	then 
#		echo -e "OK $ucr; Ответ:\n$ans\n"
#	elif [[ "$ans" != "" ]]
#		then 
#		echo "ERROR $ucr, Ответ не соответствует ожидаемому: $ans"
#	else
#		echo "ERROR $ucr, Ответ не получен из $Topic_out" # $ans"
#		exit 1
#	fi

}

KafkaErrForNewDoc() #Не готово
{

if (echo "$ans" | grep -A1 -q "doctype")
	then 
		echo -e "OK $ucr; Ответ:\n$ans\n"
	else
		echo "ERROR $ucr, Ответ не получен из $Topic_out"
		exit 1
	fi
}


All()
{
echo -e "\n============== Start chains | Catalog $1 ============="
num=$(ls -v $1 | grep -E '^[[:digit:]]')
for j in $num
do
InChain="$1/$j"
	Chain ${InChain} $1 $2
	echo '-------------------'
done
}
