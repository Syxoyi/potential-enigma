#!/usr/bin/python3

import psycopg2

con = psycopg2.connect(
    database="forapach",
  user="postgres",
  password="admin789",
  host="127.0.0.1",
  port="5432"
)

print("Database opened successfully")
cur=con.cursor()
#cur.execute("SELECT * FROM chain1")
#cur.execute("SELECT VERSION()")
#cur.execute("SELECT * FROM barcodes")
cur.execute("SELECT * FROM pg_catalog.pg_tables WHERE pg_tables.schemaname in ('public');")


def inbase(wordcount,slovoept,slovorus):
    cur.execute("INSERT INTO words(id,word,translate) VALUES ({},{},{})".format(wordcount,slovoept,slovorus))
    a="yes"
    return a
rows=cur.fetchall()
i=1
boolo=0
for row in rows:
  a=row[1]
  print(i,"---",a)
  if (a=="words"):
       boolo+=1
  else:
       boolo+=0
  i+=1
print(boolo,'ararar')
if (boolo==0):
   print('delaem')
   cur.execute('''CREATE TABLE words
   (id int4,
   word varchar,
   translate varchar);''')
elif (boolo==1):
   print('ne delaem')
   result=inbase(1,'dog','собака')
   print(result)



print("operation eees")
con.commit()
con.close()

