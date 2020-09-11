#!/usr/bin/python3

import sys
from PyQt5.QtCore import Qt
from PyQt5.QtWidgets import QApplication, QWidget

class Example(QWidget):

    def __init__(self):
        super().__init__()
        self.initIU()

    def initIU(self):
        self.setGeometry(300,300,250,150)
        self.setWindowTitle('Event handler')
        self.show()

    def keyPressEvent(self,e):
        if e.key()==Qt.Key_Escape:
            self.close()

if __name__=='__main__':
    app=QApplication(sys.argv)
    ex=Example()
    sys.exit(app.exec_())
