#!/usr/bin/python3

import pyodbc

#driver = 'DRIVER={SQL Server}'
#driver = 'DRIVER=/opt/microsoft/msodbcsql17/lib64/libmsodbcsql-17.6.so.1.1'
driver = 'DRIVER=/opt/microsoft/msodbcsql17/lib64/libmsodbcsql-17.4.so.2.1'

server = 'SERVER=10.0.50.108'
#server = 'SERVER=10.10.5.153'

port = 'PORT=1433'

db = 'DATABASE=max'
#db = 'DATABASE=barkp'

user = 'UID=max'
#user = 'UID=exp'

pw = 'PWD=Qwerty1234'
#pw = 'PWD=exp123'
conn_str = ';'.join([driver, server, port, db, user, pw])

conn = pyodbc.connect(conn_str)
cursor = conn.cursor()

cursor.execute('SELECT TOP 5 * FROM barcodes')
rest_of_rows = cursor.fetchall()
for line in rest_of_rows:
    print(line)
#row = cursor.fetchone()
#rest_of_rows = cursor.fetchall()
#print(rest_of_rows)

#cnx = pyodbc.connect("DSN=srv;DATABASE=base;UID=user;PWD=123" )
#cursor = cnx.cursor()
#cursor.execute("SELECT [IP],[Name] FROM [Nodes]")
