#!/usr/bin/python3

import sys
from PyQt5.QtWidgets import QApplication, QMainWindow, QTextEdit, QAction, QFileDialog
from PyQt5.QtGui import QIcon

class Example(QMainWindow):

    def __init__(self):
        super().__init__()
        self.initIU()

    def initIU(self):
        self.textEdit=QTextEdit()
        self.setCentralWidget(self.textEdit)
        self.statusBar()

        openFile=QAction(QIcon('../images/icon1'),'Open', self)
        openFile.setShortcut('Ctrl+O')
        openFile.setStatusTip('Open new File')
        openFile.triggered.connect(self.showDialog)

        menubar=self.menuBar()
        fileMenu=menubar.addMenu('&File')
        fileMenu.addAction(openFile)

        self.setGeometry(300,300,350,300)
        self.setWindowTitle('File dialog')
        self.show()


    def showDialog(self):
        fname=QFileDialog.getOpenFileName(self,'Open file','/home/max/scrCATALOG/Python/GUI')
        #print(fname)
        with open(fname[0],'r') as f:
            data=f.read()
            self.textEdit.setText(data)

#        f=open(fname,'r')

#        with f:
#            data=f.read()
#            self.textEdit.setText(data)

if __name__=='__main__':
    app=QApplication(sys.argv)
    ex=Example()
    sys.exit(app.exec_())
