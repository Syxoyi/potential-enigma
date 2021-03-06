#!/usr/bin/python3

import sys
from PyQt5.QtWidgets import QApplication, QMainWindow, QAction, qApp #QWidget
from PyQt5.QtGui import QIcon

class Example(QMainWindow):

    def __init__(self):
        super().__init__()
        self.initIU()

    def initIU(self):
        exitAction=QAction(QIcon('../images/icon1.png'), '&Exit',self)
        exitAction.setShortcut('Ctrl+Q')
        exitAction.triggered.connect(qApp.quit)

        self.toolbar=self.addToolBar('Exit')
        self.toolbar.addAction(exitAction)

        self.setGeometry(300,300,300,200)
        self.setWindowTitle('Menubar')
        self.show()



if __name__=='__main__':
    app=QApplication(sys.argv)
    ex=Example()
    sys.exit(app.exec_())
