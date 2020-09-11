#!/usr/bin/python3

import sys
from PyQt5.QtWidgets import QApplication, QWidget, QPushButton, QFrame, QColorDialog
from PyQt5.QtGui import QColor

class Example(QWidget):

    def __init__(self):
        super().__init__()
        self.initIU()

    def initIU(self):
        col=QColor(0,0,0)
        self.btn=QPushButton('Dialog',self)
        self.btn.clicked.connect(self.showDialog)
        self.frm=QFrame(self)
        self.frm.setStyleSheet("QWidget {background-color: %s}" % col.name())
        self.frm.setGeometry(130,22,100,100)

        self.setGeometry(300,300,250,180)
        self.setWindowTitle('Color dialog')
        self.show()


    def showDialog(self):
        col=QColorDialog.getColor()
        if col.isValid():
            self.frm.setStyleSheet("QWidget { background-color: %s }" % col.name())

if __name__=='__main__':
    app=QApplication(sys.argv)
    ex=Example()
    sys.exit(app.exec_())