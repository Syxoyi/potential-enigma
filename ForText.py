#!/usr/bin/python3.6

class ForText:
	count=0
	def __init__(self,name):
		self.name=name
		ForText.count += 1

	def showCount(self):
		print('Count: %d'%ForText.count)

	#def showName(self):
	#	print('File name:',self.name)

	def showInternal(self):
		file=open(self.name,"r+")
		inter=file.read()
		file.close()
		print(inter)

emp1=ForText("pytefi")
emp2=ForText("phone/modul1.py")

emp1.showCount()
#emp1.showName()

emp2.showCount()
#emp2.showName()

print('Total count:', ForText.count)
emp3=ForText("pytefi")
#emp3.showName()
emp3.showInternal()
emp3.showCount()
print('Total count:', ForText.count)

emp1.num=6
#print(emp1.num)
print(hasattr(emp1, 'num'))
del emp1.num
print(hasattr(emp1, 'num'))
#print(emp1.num) remove
print('=====================')

print ("ForText.__doc__:", ForText.__doc__)
print ("ForText.__name__:", ForText.__name__)
print ("ForText.__module__:", ForText.__module__)
print ("ForText.__bases__:", ForText.__bases__)
print ("ForText.__dict__:", ForText.__dict__)







