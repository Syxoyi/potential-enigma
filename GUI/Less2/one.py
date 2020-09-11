#!/usr/bin/python3

import sys
from PyQt5.QtWidgets import QApplication, QWidget

if __name__=='__main__':
    app=QApplication(sys.argv)
    w=QWidget()
    w.resize(350,250)
    w.move(550,250)
    w.setWindowTitle("SSimple")
    w.show()

    sys.exit(app.exec_())
