#!/usr/bin/python3

import sys
from PyQt5.QtWidgets import QApplication, QMainWindow, QAction, QTextEdit #qApp #QWidget
from PyQt5.QtGui import QIcon

class Example(QMainWindow):

    def __init__(self):
        super().__init__()
        self.initIU()

    def initIU(self):
        textEdit=QTextEdit()

        self.setCentralWidget(textEdit)

        exitAction=QAction(QIcon('../images/icon1.png'), '&Exit',self)
        exitAction.setShortcut('Ctrl+Q')
        exitAction.setStatusTip('Exit application')
        exitAction.triggered.connect(self.close)

        self.statusBar()

        menubar=self.menuBar()
        fileMenu=menubar.addMenu('&File')
        fileMenu.addAction(exitAction)

        toolbar=self.addToolBar('Exit')
        toolbar.addAction(exitAction)

        self.setGeometry(300,300,300,200)
        self.setWindowTitle('Main Window')
        self.show()



if __name__=='__main__':
    app=QApplication(sys.argv)
    ex=Example()
    sys.exit(app.exec_())
