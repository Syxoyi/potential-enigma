#!/usr/bin/python3.6

import time;
import calendar;
#import xex;
#import phone.modul1
import phone
import os



print ("hello, python!")

#-------#-------#-------#-------#-------#-------#-------------#-------#-------#-------#-------#-------#-------number
a = 10
#print(a)

#------#-------#-------#-------#-------#-------#-------------#-------#-------#-------#-------#-------#-------string
stre = "Ya rabotau! "
#print(stre)
#print(stre[0:5])
#print(stre[3:])
#print(stre*3)
#print(stre+"Ya ustal((")

#------#-------#-------#-------#-------#-------#-------------#-------#-------#-------#-------#-------#-------list
lists=['kak to raz', 4, 'idu', 9.3, 'secundbl', 'ustal', 'upal']
#print(lists[0:3])
#print(lists[0|2|3|1])
#print(lists[3:])
#print(lists*2)
#print(lists+lists)

#------#-------#-------#-------#-------#-------#-------------#-------#-------#-------#-------#-------#-------tuple
tuples = ('ux',44,'4d',4.2)
#print(tuples)
#print(tuples[2:4])
#print(tuples*3)
#print(tuples+tuple)

lists[1] = 'ya'
#print(lists)
#tuples[2]= 'ss'		error!
#print(tuples) 

#-------#-------#-------#-------#-------#-------#-------------#-------#-------#-------#-------#-------#-------Dictionary
dicti={}
dicti['one']="aaaaaaaaaa"
dicti[2]='lool'
smalldict={'y':"yyyxx",'a':'aaaxxx',3:43233}

#print(dicti['one'])
#aa='2'
#aa=2
#aa=int(aa)
#print(dicti[aa])
#print(smalldict)
#print(smalldict.keys())
#print(smalldict.values())
#print(smalldict['y'])

#print(type(lambda: None))
#a=10

#if (a == 1):
#	print("a = 1")
#elif ( a == 10):
#		print("a=10")
#else:
#	print("a ne 1 i ne 10")

#print(lists)
#lists.reverse()
#lists.sort() #-errrr
#print(lists)
#print(str(len(lists))+'-это длина списка(кол-во элементов)')

tuplee=(1,4,6,3,2,7,3,2,5)
#print(len(tuplee))
#print(max(tuplee))
hoho=['aa', 'odaa',4,493,'oi']
#print(hoho)
#hoho[0]=1
#hoho[3]=432
#del(hoho[1])
#print(hoho)
#hoho.remove('oi')
#print(hoho)
#tuuuple=tuple(hoho)
#del(hoho[1]) #WTF???
#print(hoho)

#-------#-------#-------#-------#-------#-------#-------------#-------#-------#-------#-------#-------#-------import time
#tick=time.time()
#tick=time.localtime(time.time())
#tick=time.asctime(time.localtime(time.time()))
#
#print(time.clock())
#print(time.ctime())
#print(time.mktime((2009, 2, 17, 17, 3, 38, 1, 48, 0)))
#
#print(time.strptime("30 Nov 00", "%d %b %y"))   ???
#
#print(tick)

#-------#-------#-------#-------#-------#-------#-------------#-------#-------#-------#-------#-------#-------function
#def simple( i,srion ):
#	y=1
#	while (i<=5):
#		print(sree)
#		y+=i
#		i+=1
#		print(y,i)
#	return y
#num=2
#sree='Посмотрим, что будет'
#ygh=simple(num,sree)
#print(y)
#print("Вот что получилось %d" % (ygh))
#
#def varlen(o,*m):
#	print(one)
#	for var in m:
#		print(var)
#one='string'
#many='a','b','de','ie'
#anyo='ixx'
#varlen(one, many,anyo)
#--lambda
#suma = lambda a11, a22, a33 : a11+a22+a33;
#a1,a2,a3=1,2,3
#print(a1,a2,a3)
#print(suma(a1,a2,a3))
#
#EEEEEEE

#-------#-------#-------#-------#-------#-------#-------------#-------#-------#-------#-------#-------#-------modules
#xex.xeex()
#print('another function')
#xex.xyyx()
#c=12
#result=xex.calc(a,stre,c)
#print('EEE, it\'s work!! Res=%d'%result)
#круть. Выбираю разные функции из др. файла
#
Money = 2000
#def AddMoney():
   # Uncomment the following line to fix the code:
#   global Money #(Если закомменчено, то ошибка)
#   Money = Money + 1
#print(Money)
#AddMoney()
#print(Money)
#
#content=dir(xex)
#print(content)
#
#print(dir(phone))
#print(phone.__all__) # нужно включать
#phone.modul1.ALALA3() #+
#phone.modul2.OLOLO1() #+

#-------#-------#-------#-------#-------#-------#-------------#-------#-------#-------#-------#-------#-------Files I/O
#foo=open("pytefi","r+")
#print("filename", foo.name)
#print("Closed or not:", foo.closed)
#print("Opening mode:", foo.mode)
#print("Softspace flag:", foo.softspace) # В python 3 не работает
#foo.write("Yea!!\nЧто-то все таки получаестся!!))\n\tyeeee\n")
#mayastr=phone.modul1.ALALA3()
#print(mayastr)
#print(str(phone.modul1.ALALA3()))
#foo.write(mayastr)
#foo.close()
#print("Closed or not:", foo.closed)
#print("filename", foo.name)
#print("Closed or not:", foo.closed)
#print("Opening mode:", foo.mode)
#Так работает
#
#f=open("/home/max/scrCATALOG/Python/pytefi") #,"r")
#for line in foo:
#	print(line)
#aaa=f.read(15);
#posit=f.tell()
#print(aaa)
#print(posit)
	#f.seek(5,1)
#aaa=f.read(11)
#print(aaa)
#posit2=f.tell()
#print(posit2)
#posit2=f.seek(0,0)
#print(f.read(3))
#f.close()
# It's work!!
#
#huaayl=open("hren","w+")
#os.rename("hren","newhren")
#EEEEEEEEEEEEEeeeeii
#huaayl.write("EbatEbatEbatEbatEbatEbat")
#huaayl.close()
#huasp=open("newhren","r+")
#huaspText=huasp.read()
#print(huaspText)
#os.remove("newhren") # It's work!!
#huaspText=huasp.read()
#print(huaspText)
#huasp.close()
#
#-------#-------#-------#-------#-------#-------#-------------#-------#-------#-------#-------#-------#-------
#dirnow=os.getcwd()
#print(dirnow)
#os.mkdir("for_test_files")
#os.chdir("for_test_files")
#dirnow=os.getcwd()
#print(dirnow)
#os.chdir("../")
#dirnow=os.getcwd()
#print(dirnow)
#os.rmdir("for_test_files")
#-------#-------#-------#-------#-------#-------#-------------#-------#-------#-------#-------#-------#-------#++++++

# Kryto)
#try:
#	ffil=open("newhren","r+")
#	ffil.write("Ox tblj ble")
#except IOError:
#	print("Xren tebe")
#else:
#	print("Vse OK")
#	ffil.close()




#------import calendar
#cal=calendar.month(2019,2)
#print(cal)



#input("\npress the Enter key to exit.")





