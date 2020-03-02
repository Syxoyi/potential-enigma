#!/bin/bash
BASEDIR=$(dirname $0)
cd $BASEDIR
. ./conf.sh
. ./lib/lib1.sh

Description(){
	echo -en "\e[30;3;46m"
	cat << EOF

Description:
-a It's option doing nothing;
-k Send files in Kafka, Kafka settings in cinf.sh

EOF
	echo -en "\e[0m\n\n"
}

if [[ "$1" == "-h" ]]
then
Description
exit 0
fi

while [ -n "$1" ]
do
case "$1" in
-a) echo "Found the -a option. It's doing nothing.";
;;
-k)k="k"; echo "Sending files in Kafka ($IP:$PORTkaf; in topic $Topic_in; answer from $Topic_out)"
shift
;;
--) shift
break ;;
*) echo "$1 is not an option"
exit
;;
esac
shift
done

# ============= info
# k - in kafka for new documents

#================================= chains =================================#

All IIAM $k
All IEAM $k
All IPI $k
#All CheqV3
rm mess
echo "Done!"
