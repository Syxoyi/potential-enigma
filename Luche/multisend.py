#!/usr/bin/python3.6

import socket
import threading
import time



sleeptime=float(input("Skok sek: "))

class Threadsend (threading.Thread):
    def __init__(self,name,counter,filename):
        threading.Thread.__init__(self)
        self.threadID=counter
        self.name=name
        self.counter=counter
        self.filename=filename

    def run(self):
        print("start" + self.name)
        Send_file(self.name,self.counter,self.filename)
        print("exiting" + self.name)

def Send_file(threadName,counter,name):
    sock=socket.socket()
    sock.connect(('localhost',8070))
    #namefile=input("Cho za fail: ")
    with open(name,'rb') as f:
        sock.sendfile(f,0)
        sock.shutdown(socket.SHUT_WR)
    s=''
    data=''

    while sock:
        #print('gavo abotai')
        data=sock.recv(1024)
        s += data.decode('utf-8')
        #print('Nu i bleaaaa:',s)
        if not data:
            break
        sock.close
        print("\nOtvet barka:\n",s)
    #print("otlagalo",data)


#Create threads
thread1 = Threadsend("Threada", 1,"Da935.xml")
thread2 = Threadsend("Threadb", 2,"DA0001497938.xml")

# Start threads
thread1.start()
time.sleep(sleeptime)
thread2.start()

thread1.join()
thread2.join()
print("Exiting the Program!!!")
