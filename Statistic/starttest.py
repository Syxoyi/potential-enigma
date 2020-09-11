#!/usr/bin/python3

import os
import sys
from maxtestlib.bash_request import request_prod as br
from maxtestlib.db_save import parse_save as ps

workdir=os.path.abspath(os.path.dirname(sys.argv[0]))
os.chdir(workdir)

#print('start\n')
#a = br.GetData()
#result = a.request()
#print(result)
#spis = ['08/11/20_15:16:46_2\n', '  34146 <ErrText>0b0 ШК mark не найден в системе</ErrText>\n', '    669 <ErrText>0b2 Некорректный владелец:FsrarID ШК mark</ErrText>\n', '      6 <ErrText>0b4 Инверсия даты: some_time для ШК mark</ErrText>\n', '    323 <ErrText>0c3 Некорректная РФУ2: FormB для ШК: mark</ErrText>\n', '     45 <ErrText>0d1 Будущая дата документа: some_date</ErrText>\n', '      2 <ErrText>0d2 В позиции с РФУ2:FormB ШК не соответствуют коду АП</ErrText>\n', '      2 <ErrText>0d3 В позиции с РФУ2:FormB ШК не соответствуют коду АП: FsrarID3466919</ErrText>\n', '      2 <ErrText>0d4 В позиции с РФУ2:FormB ШК не соответствуют коду АП: FsrarID1317242</ErrText>\n', '    494 <ErrText>0g0 По РФУ2: FormB не зарегистрирован пересорт в количестве quantity единиц</ErrText>\n', '      8 <ErrText>0h4 Инверсия даты: some_date</ErrText>\n', '    531 <ErrText>0v0 ШК mark не найден в архиве</ErrText>\n', '   4143 <ErrText>1b0 ШК mark уже зарегистрирован</ErrText>\n', '    272 <ErrText>1b2 Организация с кодом FsrarID уже имеет ШК mark</ErrText>\n', '     71 <ErrText>1b3 Для ШК doctype:mark документ не разрешен</ErrText>\n', '    333 <ErrText>1h0 Документ уже зарегистрирован</ErrText>\n', '   7968 <ErrText>1v0 ШК mark выведен из оборота</ErrText>\n', '      4 <ErrText>af1 ШК mark выведен из оборота организацией FsrarID</ErrText>\n', '      4 <ErrText>af3 Для ШК mark уже зарегистрирован пересорт</ErrText>\n', '      6 <ErrText>hs4 Продукция c РФУ2:FormB пересорчена в течение более 90 дней</ErrText>\n', '      3 <ErrText>len ; РФУ2 не может содержать марки разных образцов</ErrText>\n', '     91 <ErrText>sql1 Взаимоблокировка</ErrText>\n', '     56 <ErrText>Зарегистрирована пересортица по штрихкодам: \n', '     56 <ErrText>Организация с кодом FsrarID зарегистрировала пересортицу по штрихкодам: \n', '    114 <ErrText>Продукция со штрихкодом mark выведена из оборота.</ErrText>\n']
spis = ['08/12/20_13:09:49_3\n', '  0  <ErrText>0b0 ШК mark не найден в системе</ErrText>\n', '    0  <ErrText>0b2 Некорректный владелец:FsrarID ШК mark</ErrText>\n', '     0  <ErrText>0b4 Инверсия даты: some_time для ШК mark</ErrText>\n', '    0  <ErrText>0c3 Некорректная РФУ2: FormB для ШК: mark</ErrText>\n', '     0  <ErrText>0d1 Будущая дата документа: some_date</ErrText>\n', '    0  <ErrText>0g0 По РФУ2: FormB не зарегистрирован пересорт в количестве quantity единиц</ErrText>\n', '     0  <ErrText>0h4 Инверсия даты: some_date</ErrText>\n', '    0  <ErrText>0v0 ШК mark не найден в архиве</ErrText>\n', '   0  <ErrText>1b0 ШК mark уже зарегистрирован</ErrText>\n', '    0  <ErrText>1b2 Организация с кодом FsrarID уже имеет ШК mark</ErrText>\n', '    0  <ErrText>1b3 Для ШК doctype:mark документ не разрешен</ErrText>\n', '      0  <ErrText>1d2 Документ ещё обрабатывается</ErrText>\n', '    0  <ErrText>1h0 Документ уже зарегистрирован</ErrText>\n', '   0  <ErrText>1v0 ШК mark выведен из оборота</ErrText>\n', '      0  <ErrText>af1 ШК mark выведен из оборота организацией FsrarID</ErrText>\n', '      0  <ErrText>hs4 Продукция c РФУ2:FormB пересорчена в течение более 0  дней</ErrText>\n', '     0  <ErrText>sql1 Взаимоблокировка</ErrText>\n', '     0  <ErrText>Зарегистрирована пересортица по штрихкодам: \n', '     0  <ErrText>Организация с кодом FsrarID зарегистрировала пересортицу по штрихкодам: \n', '     0  <ErrText>Продукция со штрихкодом mark выведена из оборота.</ErrText>\n']
##print(spis)

parss = ps.ParseData(spis)
#parss = ps.ParseData(result)
#parss.parser()
parss.saveintable()
