#!/usr/bin/python3

import sys
from PyQt5.QtCore import pyqtSignal, QObject
from PyQt5.QtWidgets import QApplication,QMainWindow

class Communicate(QObject):
    closeApp=pyqtSignal()

class Example(QMainWindow):

    def __init__(self):
        super().__init__()
        self.initIU()

    def initIU(self):
        self.c=Communicate()
        self.c.closeApp.connect(self.close)

        self.setGeometry(300,300,290,150)
        self.setWindowTitle('Event handler')
        self.show()


    def mousePressEvent(self,event):
        self.c.closeApp.emit()

if __name__=='__main__':
    app=QApplication(sys.argv)
    ex=Example()
    sys.exit(app.exec_())
