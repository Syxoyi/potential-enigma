#!/usr/bin/python3

import psycopg2

con = psycopg2.connect(
  database="barksql", 
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
rows=cur.fetchall()
i=1
for row in rows:
  a=row[1]
  print(i,"---",a)
#  print(i,"---",row[1])
#  cur.execute("TRUNCATE TABLE public.{}".format(a))
  print("TRUNCATE TABLE public.{}".format(a))
  i+=1

print("operation eees")

con.close()
