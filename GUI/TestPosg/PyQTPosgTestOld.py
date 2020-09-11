#!/usr/bin/python3

import sys
import psycopg2
import re
from PyQt5.QtWidgets import QMainWindow, QApplication, QPushButton, QWidget, QAction, qApp, QTableView, QTabWidget, QVBoxLayout, QTextEdit, QHBoxLayout, QComboBox
from PyQt5.QtGui import QIcon
from PyQt5.QtCore import pyqtSlot, Qt


class App(QMainWindow):

    def __init__(self):
        super().__init__()
        self.title='PyQt5 tabs lol'
        self.left=0
        self.top=0
        self.width=900
        self.height=700

        self.exitAction = QAction(QIcon('/home/max/scrCATALOG/portal_exit.png'),'&Exitt',self)
        self.exitAction.setShortcut('Ctrl+Q')
        self.exitAction.setStatusTip('Exit from here')

        self.statusBar()


        #menubar=self.menuBar()
        #fileMenu=menubar.addMenu('&File')
        #fileMenu.addAction(exitAction)
        self.exitAction.triggered.connect(qApp.quit) #self.table_widget.Exit())
        self.menubar=self.menuBar()
        self.optionsmenu=self.menubar.addMenu('&Options')
        self.optionsmenu.addAction(self.exitAction)


        self.setWindowTitle(self.title)
        self.setGeometry(self.left, self.top, self.width, self.height)

        self.table_widget = MyTableWidget(self)
        self.setCentralWidget(self.table_widget)


        self.show()


class MyTableWidget(QWidget):
    def __init__(self,parent):
        super(QWidget, self).__init__(parent)
        self.vbox = QVBoxLayout(self)

#=============== bd ==================

        #initializate tab screen
        self.tabs=QTabWidget()
        self.tab1 = QWidget()
        self.tab2 = QWidget()
        self.tabs.resize(300,200)

    #Adds tabs
        self.tabs.addTab(self.tab1,"tab oone")
        self.tabs.addTab(self.tab2,"tab twoo")

#================  tab 1  ==============

    #create first tab
        self.tab1.vbox2 = QVBoxLayout(self)
        self.tab1.vbox = QVBoxLayout(self)
        self.tab1.hbox= QHBoxLayout(self)

    #For tab1
        self.combo = QComboBox(self)
        self.pushButton1 = QPushButton("ConnectBD")
        self.pushButton2 = QPushButton("Tables from bd")
        self.pushButton3 = QPushButton("Exit")
        self.fortext = QTextEdit(self)
        self.fortext2 = QTextEdit(self)

    #Add widgets in tab1
        self.tab1.vbox2.addWidget(self.pushButton1)
        self.tab1.vbox2.addWidget(self.pushButton2)
        self.tab1.vbox2.addWidget(self.pushButton3)
        self.tab1.vbox.addWidget(self.fortext)
        self.tab1.vbox.addWidget(self.fortext2)
        self.tab1.vbox2.addWidget(self.combo)

    #Layout in tab1 with widgets
        #self.layout.addLayout(self.tab1.hbox) # чет хорошо получилось
        self.tab1.hbox.addLayout(self.tab1.vbox2)
        self.tab1.hbox.addLayout(self.tab1.vbox)
        #self.tab1.vbox.addWidget(self.pushButton1)
        #self.tab1.vbox.addWidget(self.pushButton2)
        self.tab1.setLayout(self.tab1.hbox)

        #Add tabs to widget
        self.vbox.addWidget(self.tabs)
        self.setLayout(self.vbox)

        self.pushButton1.clicked.connect(self.ConnectBd)
        self.pushButton2.clicked.connect(self.TablesFromBd)
        self.pushButton3.clicked.connect(self.Exit)

#================  tab2 ================
    #create second tab
        self.tab2.vboxtab2_2 = QVBoxLayout(self)
        self.tab2.vboxtab2 = QVBoxLayout(self)
        self.tab2.hboxtab2= QHBoxLayout(self)

        self.combo2 = QComboBox(self)
        self.buttontab2 = QPushButton("Find tables")
        self.buttontab2_2 = QPushButton("What in table?")
        self.fortexttab2 = QTextEdit(self)

        self.tab2.vboxtab2.addWidget(self.buttontab2)
        self.tab2.vboxtab2.addWidget(self.combo2)
        self.tab2.vboxtab2.addWidget(self.buttontab2_2)
        self.tab2.vboxtab2_2.addWidget(self.fortexttab2)

        self.tab2.hboxtab2.addLayout(self.tab2.vboxtab2)
        self.tab2.hboxtab2.addLayout(self.tab2.vboxtab2_2)
        self.tab2.setLayout(self.tab2.hboxtab2)

        self.buttontab2.clicked.connect(self.GetTablesInTab2)
        self.buttontab2_2.clicked.connect(self.ZaprOstatkov)

    def ZaprOstatkov(self):
        #hmm
        #self.combo2.activated[str].
        curr_text=self.combo2.currentText()
        self.cur.execute(f"SELECT * FROM {curr_text};")
        rows=self.cur.fetchall()
        tab=[]
        for line in rows:
            print(line)
            tab.append(f'{line[1]}\n')
        tab.sort()
        tables=''.join(str(l) for l in tab)
        self.fortexttab2.setText(tables)

    def GetTablesInTab2(self):
        #reg=re.compile(r'(?:[-a-zA-Z0-9])(?:\n)(?:[-a-zA-Z0-9])')
        aa=self.fortext2.toPlainText()
        #aa=re.sub("\n",'',aa)
        #print(aa)
        ll=aa.split('\n')
        if '' in ll:
            ll.remove('')
        #print(ll)
        for el in ll:
            self.combo2.addItem(el)

        #for line in aa:
        #    print(line)


    def ConnectBd(self):
                self.con = psycopg2.connect(
                database="barksql",
                user="postgres",
                password="admin789",
                host="127.0.0.1",
                port="5432"
                )

                self.fortext.insertPlainText("Database opened successfully")


    def TablesFromBd(self):
        self.cur=self.con.cursor()
        self.cur.execute("SELECT * FROM pg_catalog.pg_tables WHERE pg_tables.schemaname in ('public');")
        rows=self.cur.fetchall()
        #vrem=''.join(str(line) for line in rows)
        #print(type(vrem))
        #vrem = vrem.replace(")(","\n")
        #print(rows[:2])
        #self.fortext2.insertPlainText(rows[:][2])
        tab=[]
        for line in rows:
            print(line)
            tab.append(f'{line[1]}\n')
        tab.sort()
        tables=''.join(str(l) for l in tab)
        self.fortext2.insertPlainText(tables)
        #for row in rows:
        #    print(row)
            #if "barcodes" in row:
            #    print('YES')

    def Exit(self):
        self.con.close()
        QCoreApplication.instance().quit
        self.close()



#    @pyqtSlot()
#    def on_click(self):
#        print("\n")
#        for currentQTableWidgetItem in self.tableWidget.seletedItems():
#            print(currentQTableWidgetItem.row(), currentQTableWidgetItem.columv(),currentQTableWidgetItem.text())


if __name__ == '__main__':
    app = QApplication(sys.argv)
    ex = App()
    sys.exit(app.exec_())

