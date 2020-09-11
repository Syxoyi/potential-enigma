import psycopg2
from psycopg2 import sql
import re


class ParseData:

    def __init__(self, data, time):
        self.data = data
        self.time = time
        self.datdic = {}
        self.tableerr = {'tablename':'errors',
                         'column_id':'id',
                         'column_error':'err'}
        self.tabledata = {'tablename':'data',
                          'column_id':'id',
                          'column_err':'err_id',
                          'column_quantity':'quantity',
                          'column_date':'date',
                          'column_week':'week_day',
                          'column_serial':'serial_id',
                          'column_time':'ttime'}


    def saveintable(self):
        time_st = self.time
        for i,line in enumerate(self.data):
            tmp = time_st.split('_')
            dateday = tmp[0]
            comtime = tmp[1]
            week_day = tmp[2]
            serial_id = time_st[11:13]
            quantity = line[0]
            error = line[1]
            while True:
            #    break
                conn = psycopg2.connect(database = 'errstatistic',
                                        user = 'max',
                                        password = 'admin789',
                                        host = 'localhost',
                                        port = 5432)
                try:
                    with conn.cursor() as cur:
                        query_err = sql.SQL("SELECT {field} FROM {table} WHERE {pkey} = %s").format(field = sql.Identifier(self.tableerr['column_id']), table = sql.Identifier(self.tableerr['tablename']), pkey = sql.Identifier(self.tableerr['column_error']))
                        cur.execute(query_err,(error,))
                        err_id = cur.fetchall()
                        if err_id == []:
                            raise psycopg2.errors.UndefinedTable
                        cur.execute(sql.SQL("""INSERT INTO {table} (err_id, quantity, date, week_day, serial_id, ttime) VALUES ((select id from {table2} where err = %s ),%s, %s, %s, %s, %s)""").format(
                                    table = sql.Identifier(self.tabledata['tablename']),table2 = sql.Identifier(self.tableerr['tablename'])),
                                    (error, quantity, dateday, week_day, serial_id, comtime))
                        #print(self.tabledata['tablename'],' # ', self.tableerr['tablename'],' # ', error,' # ', quantity,' # ', dateday,' # ', week_day,' # ', serial_id,' # ', comtime )
                        conn.commit()
                    break
                except psycopg2.errors.UndefinedTable:
                    conn.rollback()
                    print('found psy error')
                    with conn.cursor() as cur:
                        cur.execute(sql.SQL("""INSERT INTO {table} ({column}) VALUES (%s)""").format(table = sql.Identifier(self.tableerr['tablename']), column = sql.Identifier(self.tableerr['column_error'])), (error,))
                        conn.commit()
                finally:
                    conn.close()
                conn.close()
