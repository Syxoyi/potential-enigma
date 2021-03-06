
import subprocess
import paramiko
import os
import re

class GetData:

    def __init__(self):
        self.comdate= ""
        self.result = []
        #self.date = "date +'%D %T %u'"
        self.datecommand = '''ssh ND_PROD_netty01_5_226 "date +%F_%T_%u"'''
        self.datecommand21 = '''ssh ND_PROD_netty01_5_226 "grep '<ErrText>' /logs/front.log | sed -E 's/[a-Z0-9]{68,150}/mark/'| sed -E 's/FB-[0-9]{15}/FormB/'| sed -E 's/[0-9]{12}/FsrarID/'| sed -E 's/[[:digit:]]{4}-[[:digit:]]{2}-[[:digit:]]{2}T[[:digit:]]{2}-[[:digit:]]{2}-[[:digit:]]{2}/some_date/' | sed -E 's/[[:digit:]]{4}-[[:digit:]]{2}-[[:digit:]]{2}/some_time/' | sed -E 's/Для ШК [[:digit:]]{1,2}:mark/Для ШК doctype:mark/' | sed -E 's/пересорт в количестве [[:digit:]]* единиц/пересорт в количестве quantity единиц/' |sed -E 's/^ *//'| sed -E 's/[0-9]{3,}/num/' | sed 's/some_date/some_dt/' | sed 's/some_time/some_dt/' | sort | uniq -dc"'''
        self.datecommand22 = '''ssh ND_PROD_netty01_5_226 "grep '<ErrText>' /logs/front.log | sed -E 's/[a-Z0-9]{68,150}/mark/'| sed -E 's/FB-[0-9]{15}/FormB/'| sed -E 's/[0-9]{12}/FsrarID/'| sed -E 's/[[:digit:]]{4}-[[:digit:]]{2}-[[:digit:]]{2}T[[:digit:]]{2}-[[:digit:]]{2}-[[:digit:]]{2}/some_date/' | sed -E 's/[[:digit:]]{4}-[[:digit:]]{2}-[[:digit:]]{2}/some_time/' | sed -E 's/Для ШК [[:digit:]]{1,2}:mark/Для ШК doctype:mark/' | sed -E 's/пересорт в количестве [[:digit:]]* единиц/пересорт в количестве quantity единиц/' |sed -E 's/^ *//'| sed -E 's/[0-9]{3,}/num/' | sed 's/some_date/some_dt/' | sed 's/some_time/some_dt/' | sort | uniq -dc"'''
        self.datecommand23 = '''ssh ND_PROD_netty01_5_226 "grep '<ErrText>' /logs/front.log | sed -E 's/[a-Z0-9]{68,150}/mark/'| sed -E 's/FB-[0-9]{15}/FormB/'| sed -E 's/[0-9]{12}/FsrarID/'| sed -E 's/[[:digit:]]{4}-[[:digit:]]{2}-[[:digit:]]{2}T[[:digit:]]{2}-[[:digit:]]{2}-[[:digit:]]{2}/some_date/' | sed -E 's/[[:digit:]]{4}-[[:digit:]]{2}-[[:digit:]]{2}/some_time/' | sed -E 's/Для ШК [[:digit:]]{1,2}:mark/Для ШК doctype:mark/' | sed -E 's/пересорт в количестве [[:digit:]]* единиц/пересорт в количестве quantity единиц/' |sed -E 's/^ *//'| sed -E 's/[0-9]{3,}/num/' | sed 's/some_date/some_dt/' | sed 's/some_time/some_dt/' | sort | uniq -dc"'''

    def Requestdata(self):

        data = os.popen(self.datecommand,'r')
        while True:
            line = data.readline()
            if not line:
                break
            #print(line)
            self.result.append(line)
        #print('===========')
        #print(self.result)

    def Requesterrors(self,i):
        if i == 1:
            errors = os.popen(self.datecommand21,'r')
        elif i == 2:
            errors = os.popen(self.datecommand22,'r')
        elif i == 3:
            errors = os.popen(self.datecommand23,'r')
        while True:
            line = errors.readline()
            if not line:
                break
            self.result.append(line)

    def Sorting(self):
        resultlist = []

        #self.result = ['2021-08-03_08:39:13_2\n', '   8566 <ErrText>0b0 ШК mark не найден в системе</ErrText>\n', '    194 <ErrText>0b2 Некорректный владелец:FsrarID ШК mark</ErrText>\n', '     79 <ErrText>0c3 Некорректная РФУ2: FormB для ШК:mark</ErrText>\n', '      4 <ErrText>0d4 В позиции с РФУ2:FormB ШК не соответствуют коду АП: FsrarIDnum</ErrText>\n', '     10 <ErrText>0g0 По РФУ2: FormB не зарегистрирован пересорт в количестве quantity единиц</ErrText>\n', '      2 <ErrText>0h4 Инверсия даты: some_dt</ErrText>\n', '    138 <ErrText>0v0 ШК mark не найден в архиве</ErrText>\n', '    872 <ErrText>1b0 ШК mark уже зарегистрирован</ErrText>\n', '     37 <ErrText>1b2 Организация с кодом FsrarID уже имеет ШК mark</ErrText>\n', '     94 <ErrText>1b3 Для ШК doctype:mark документ не разрешен</ErrText>\n', '    407 <ErrText>1h0 Документ уже зарегистрирован</ErrText>\n', '   1525 <ErrText>1v0 ШК mark выведен из оборота</ErrText>\n', '      5 <ErrText>af1 ШК mark выведен из оборота организацией FsrarID</ErrText>\n', '      4 <ErrText>hs4 Продукция c РФУ2:FormB пересорчена в течение более 90 дней</ErrText>\n', '     4 <ErrText>Internal error (Exception_detail: java.sql.SQLException I/O Error Read timed out? )</ErrText>\n', '      2 <ErrText>len ; РФУ2 не может содержать марки разных образцов</ErrText>\n', '     50 <ErrText>sql1 Взаимоблокировка</ErrText>\n', '      3 <ErrText>There is no Content element in xml. </ErrText>\n', '     20 <ErrText>Зарегистрирована пересортица по штрихкодам: \n', '     20 <ErrText>Организация с кодом FsrarID зарегистрировала пересортицу по штрихкодам: \n', '     54 <ErrText>Продукция со штрихкодом mark выведена из оборота.</ErrText>\n', '   8568 <ErrText>0b0 ШК mark не найден в системе</ErrText>\n', '    195 <ErrText>0b2 Некорректный владелец:FsrarID ШК mark</ErrText>\n', '     79 <ErrText>0c3 Некорректная РФУ2: FormB для ШК: mark</ErrText>\n', '      4 <ErrText>0d4 В позиции с РФУ2:FormB ШК не соответствуют коду АП: FsrarIDnum</ErrText>\n', '     10 <ErrText>0g0 По РФУ2: FormB не зарегистрирован пересорт в количестве quantity единиц</ErrText>\n', '      2 <ErrText>0h4 Инверсия даты: some_dt</ErrText>\n', '    139 <ErrText>0v0 ШК mark не найден в архиве</ErrText>\n', '  872 <ErrText>1b0 ШК mark уже зарегистрирован</ErrText>\n', '     37 <ErrText>1b2 Организация с кодом FsrarID уже имеет ШК mark</ErrText>\n', '     94 <ErrText>1b3 Для ШК doctype:mark документ не разрешен</ErrText>\n', '407 <ErrText>1h0 Документ уже зарегистрирован</ErrText>\n', '   1530 <ErrText>1v0 ШК mark выведен из оборота</ErrText>\n', '      5 <ErrText>af1 ШК mark выведен из оборота организацией FsrarID</ErrText>\n', '      4 <ErrText>hs4 Продукция c РФУ2:FormB пересорчена в течение более 90 дней</ErrText>\n', '      4 <ErrText>Internal error (Exception_detail: java.sql.SQLException I/O Error Read timed out? )</ErrText>\n', '      2 <ErrText>len ; РФУ2 не может содержать марки разных образцов</ErrText>\n', '     50 <ErrText>sql1 Взаимоблокировка</ErrText>\n', '      3 <ErrText>There is no Content element in xml. </ErrText>\n', '     20 <ErrText>Зарегистрированапересортица по штрихкодам: \n', '     20 <ErrText>Организация с кодом FsrarID зарегистрировала пересортицу по штрихкодам: \n', '     54 <ErrText>Продукция со штрихкодом mark выведена из оборота.</ErrText>\n', '   8574 <ErrText>0b0 ШК mark не найден в системе</ErrText>\n', '    195 <ErrText>0b2 Некорректный владелец:FsrarID ШК mark</ErrText>\n', '     79 <ErrText>0c3 Некорректная РФУ2: FormB для ШК: mark</ErrText>\n', '      4 <ErrText>0d4 В позиции с РФУ2:FormB ШК не соответствуют коду АП: FsrarIDnum</ErrText>\n', '     10 <ErrText>0g0 По РФУ2: FormB не зарегистрирован пересорт в количестве quantity единиц</ErrText>\n', '      2 <ErrText>0h4 Инверсия даты: some_dt</ErrText>\n', '    139 <ErrText>0v0 ШК mark не найден в архиве</ErrText>\n', '    872 <ErrText>1b0 ШК mark уже зарегистрирован</ErrText>\n', '     37 <ErrText>1b2 Организация с кодом FsrarID уже имеет ШК mark</ErrText>\n', '     94 <ErrText>1b3 Для ШК doctype:mark документ не разрешен</ErrText>\n', '    407 <ErrText>1h0 Документ уже зарегистрирован</ErrText>\n', '   1532 <ErrText>1v0 ШК mark выведен из оборота</ErrText>\n', '  5 <ErrText>af1 ШК mark выведен из оборота организацией FsrarID</ErrText>\n', '      4 <ErrText>hs4 Продукция c РФУ2:FormB пересорчена в течение более 90 дней</ErrText>\n', '      4 <ErrText>Internal error (Exception_detail: java.sql.SQLException I/O Error Read timed out? )</ErrText>\n', '      2 <ErrText>len ; РФУ2 не может содержать марки разных образцов</ErrText>\n', '     50 <ErrText>sql1 Взаимоблокировка</ErrText>\n', '      3 <ErrText>There is no Content element in xml. </ErrText>\n', '     20 <ErrText>Зарегистрирована пересортица по штрихкодам: \n', '     20 <ErrText>Организация с кодом FsrarID зарегистрировала пересортицу по штрихкодам: \n', ' 54 <ErrText>Продукция со штрихкодом mark выведена из оборота.</ErrText>\n']

        errline = re.compile(r'(\d* )(<ErrText>)([^<]*)(|</ErrText>)')
        dateline = re.compile(r'\d{4}-\d\d-\d\d_\d\d:\d\d:\d\d_\d')
        errlist = []
        for line in self.result:
            if re.match(dateline, line):
                self.comdate = line.rstrip('\n')
                continue
            match = re.search(errline, line)
            errlist.append(match[3])
        errlist = set(errlist)
        for err in errlist:
            errquantity=0
            for line in self.result:
                if err in line:
                    errquantity += int(re.search(errline, line)[1])
            reserrlin = err.replace(' ','_')
            resultlist.append([errquantity, reserrlin.rstrip('\n')])
        self.result = resultlist

    def request(self):
        self.Requestdata()
        self.Requesterrors(1)
        self.Requesterrors(2)
        self.Requesterrors(3)
        #print(self.result)
        self.Sorting()

        return self.result, self.comdate

