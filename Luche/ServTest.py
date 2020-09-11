#!/usr/bin/python
import socket


s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.bind(("localhost",9999))
s.listen(1)
sc,address = s.accept()

print('connected!','sc=: ',sc,'address=: ',address)
#i=1
#f = open('file_'+ str(i)+".pdf",'wb') # Open in binary
#i=i+1
prin=b''
#while sc:
    # Recibimos y escribimos en el fichero
#    l = sc.recv(1024)
while sc:
    print(prin)
    prin = sc.recv(1024)
    if not prin:
        break
        print('ny ept',prin)
    sc.send(prin)
    sc.close()
#f.close()
print('cho za')
#s.close()