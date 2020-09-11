#!/usr/bin/python3

import sys
from PyQt5.QtWidgets import QApplication, QWidget, QMessageBox # QPushButton
#from PyQt5.QtGui import QIcon,QFont
#from PyQt5.QtCore import QCoreApplication

class Example(QWidget):
    def __init__(self):
        super().__init__()
        self.initUI()

    def initUI(self):
        self.setGeometry(300,300,250,150)
        self.setWindowTitle('Message box')
        self.show()

    def closeEvent(self, event):
        reply=QMessageBox.question(self, 'Message',"Are you sure ro quit?",QMessageBox.Yes|QMessageBox.No, QMessageBox.No)
        if reply == QMessageBox.Yes:
            event.accept()
        else:
            event.ignore()

if __name__=='__main__':
    app=QApplication(sys.argv)
    ex=Example()
    sys.exit(app.exec_())
