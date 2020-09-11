#!/usr/bin/python
# -*- coding: utf-8 -*-

import socket

sock = socket.socket()
sock.connect(('localhost', 8081))


f=open('1.xml','rb')
All=f.read()
sock.send(All)

#sent='hello, world!'
#sock.send(sent.encode('utf-8'))
print('aaaaaaaa')
#data = sock.recv(1024)
data=sock.recvfrom(1024) #,(127.0.0.7,8070))
sock.close()

print(data.decode('utf-8'))

