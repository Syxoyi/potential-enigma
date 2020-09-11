#!/usr/bin/python3

import sys
from PyQt5.QtWidgets import QApplication, QWidget, QLCDNumber, QGridLayout, QPushButton, QVBoxLayout, QButtonGroup, QAction, QLabel
from PyQt5.QtCore import QCoreApplication

class Calculator(QWidget):

    def __init__(self):
        super().__init__()
        self.initIU()

    def initIU(self):
        self.qlb=QLabel(self)
        vbox=QVBoxLayout()
        grid=QGridLayout()
        self.numer=QLCDNumber(self)
        vbox.addWidget(self.qlb)
        vbox.addWidget(self.numer)
        vbox.addLayout(grid)
        self.setLayout(vbox)

        self.btn_grp=QButtonGroup()
        self.btn_grp.setExclusive(True)


        names=['Clr','Bck','Err','Close','7','8','9','/','4','5','6','*','1','2','3','-','0','.','=','+']
        positions=[(i,j) for i in range(5) for j in range(4)]

        ii=0
        self.dict_btn={}
        for position, name in zip(positions,names):
            button=QPushButton(name,self)
            self.btn_grp.addButton(button)
            self.btn_grp.setId(button,ii)
            grid.addWidget(button,*position)
            #self.dict_btn[ii]=self.btn_grp.button(ii),name
            self.dict_btn[self.btn_grp.button(ii)]=name
            #print(button,self.btn_grp.button(ii),self.btn_grp.id(button))
            print(self.dict_btn)
            #print(name)
            ii+=1

        #button.clicked.connect(self.doSomething())
        self.x=[]
        self.btn_grp.buttonClicked.connect(self.doSomething)
        #grid.addWidget(num,6,0,1,4)

        self.setGeometry(400,600,300,300)
        self.setWindowTitle("КальклоЭ")

    def doSomething(self,btn):
        a=''
        #sender=self.sender()
        #print(sender.text()+'eto cho')
        #print(self.btn_grp.id(4))
        #print(btn)

        print(self.dict_btn[btn])
        num=self.dict_btn[btn]
        #print('saaaaaaaaaaa')
        if (num != ''):
            if (num != '=') & (num != 'Clr') & (num != 'Bck') & (num != 'Err') & (num != 'Close'):
                self.x.append(num)
                print(''.join(str(x) for x in self.x))
                self.qlb.setText(str((''.join(str(x) for x in self.x))))
            elif (num == '='): # & (self.x[0] != '/') & (self.x != '*'):
                while True:
                    if (self.x[0] == '/') | (self.x[0] =='*'):
                        self.x.pop(0)
                    else:
                        break
                #while True:
                #    if (self.x[0] == '0') & (self.x[1] != '.'):
                #        self.x.pop[0]
                #    else:
                #        break
                a=''.join(str(x) for x in self.x)
                print(a)
                result=eval(f'{a}')
                self.numer.display(result)
                self.x=[result]
                print(''.join(str(x) for x in self.x))
                self.qlb.setText(''.join(str(x) for x in self.x))
            elif (num == 'Clr'):
                self.x.clear()
                self.qlb.setText('')
            elif (num == 'Close'):
                print('exit')
                self.close()
                #QCoreApplication.instance().quit
            elif (num == 'Err'):
                print(self.x[0])
            elif (num == 'Bck'):
                self.x.pop()
                self.qlb.setText(''.join(str(x) for x in self.x))


if __name__ == '__main__':
    app=QApplication(sys.argv)
    Calc=Calculator()
    Calc.show()
    sys.exit(app.exec_())
