#!/usr/bin/python3

import sqlalchemy

engine = create_engine('mssql+pyodbc://sa:Qwerty1234@10.0.50.108:1433/dbCVServer?driver=/opt/microsoft/msodbcsql17/lib64/libmsodbcsql-17.6.so.0.1', echo=True)

engine.execute('select 1')
