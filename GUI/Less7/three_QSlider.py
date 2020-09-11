#!/usr/bin/python3

import sys
from PyQt5.QtWidgets import QApplication, QWidget, QSlider, QLabel
from PyQt5.QtGui import QPixmap
from PyQt5.QtCore import Qt

class Example(QWidget):

    def __init__(self):
        super().__init__()
        self.initIU()

    def initIU(self):
        sld=QSlider(Qt.Horizontal,self)
        sld.setFocusPolicy(Qt.NoFocus)
        sld.setGeometry(30,40,100,30)
        sld.valueChanged[int].connect(self.changeValue)

        self.label=QLabel(self)
        self.label.setPixmap(QPixmap('/home/max/scrCATALOG/someicons/volume_muted_mute_icon_143664_32.png'))
        self.label.setGeometry(160,40,80,30)

        self.setGeometry(300,300,280,170)
        self.setWindowTitle('QSlider')
        self.show()


    def changeValue(self, value):
        if value==0:
            self.label.setPixmap(QPixmap('/home/max/scrCATALOG/someicons/volume_muted_mute_icon_143664_32.png'))
        elif value > 0 and value < 30:
            self.label.setPixmap(QPixmap('/home/max/scrCATALOG/someicons/file_generic_icon_143783-32.png'))
        elif value > 30 and value < 80:
            self.label.setPixmap(QPixmap('/home/max/scrCATALOG/someicons/volume_muted_mute_icon_143664_32.png'))
        else:
            self.label.setPixmap(QPixmap('/home/max/scrCATALOG/someicons/file_generic_icon_143783-32.png'))

if __name__=='__main__':
    app=QApplication(sys.argv)
    ex=Example()
    sys.exit(app.exec_())
