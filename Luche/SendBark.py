#!/usr/bin/python

import socket

sock=socket.socket()
sock.connect(('localhost',8070))

namefile=input("Cho za fail: ")
#filee=open(namefile,'rb')
#doc=filee.read()
#filee.close
#budok=bytes(str(doc),encoding='utf-8')

#sock.sendall(budok)
with open(namefile,'rb') as f:
    sock.sendfile(f,0)
    sock.shutdown(socket.SHUT_WR)
    #sock.shutdown(SHUT_WR)
s=''
data=''

while sock:
    print('gavo abotai')
    #data+=sock.recv(1024)
    data=sock.recv(1024)
    s += data.decode('utf-8')
    print('Nu i bleaaaa:',s)
    if not data:
        break
    sock.close
print('Nu i blea')
print("otlagalo",data)
#print(data)
