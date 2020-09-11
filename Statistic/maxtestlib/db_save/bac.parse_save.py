import psycopg2
from psycopg2 import sql
import re
#import asyncio
#import asyncpg


class ParseData:

    def __init__(self, data):
        self.data = data
        self.datdic = {}
        self.table = 'errors'

    def createtable(self, name):
        try:
            conn = psycopg2.connect(database = 'errstatistic',
                                    user = 'max',
                                    password = 'admin789',
                                    host = 'localhost',
                                    port = 5432)
            with conn.cursor() as cur:
                cur.execute(sql.SQL("""CREATE TABLE {} (id serial NOT NULL, quantity integer NOT NULL, time_st varchar(255) NOT NULL)""").format(sql.Identifier(tablename)))
                conn.commit()
        except:
            print('ya xz')
            conn.close()


    def parser(self):
        i = 0
        for line in self.data:
            tmp = line.rstrip('\n')
            tmp = re.sub('\s+', ' ', tmp) #.split()
            self.datdic[i] = tmp
            i += 1

            #print(tmp)
            #print(tmp[0], ' aaaaaa ', tmp[1:])
        #print(self.datdic)
        return(self.datdic)

    def saveintable(self):
        datadic = self.parser()
        time_st = datadic.pop(0)
        for key in datadic:
            tmp = self.datdic[key].split()
            quantity = int(tmp[0])
            error = '_'.join(tmp[1:])
            errtmp = error.replace('</ErrText>','')
            tablename = errtmp.replace('<ErrText>','')
            timestmp = ' '.join(time_st.split('_')[:2])
            week_day = time_st.split('_')[2]
            #print(tablename)
            #print('db opened')
            while True:
                conn = psycopg2.connect(database = 'errstatistic',
                                        user = 'max',
                                        password = 'admin789',
                                        host = 'localhost',
                                        port = 5432)
                #conn.autocommit = True
                try:
                    with conn.cursor() as cur:
                        query_err = sql.SQL("SELECT {field} FROM {table} WHERE {pkey} = %s").format(field = sql.Identifier('id'), table = sql.Identifier('errors'), pkey = sql.Identifier('err'))
                        cur.execute(query_err,(tablename,))
                        err_id = cur.fetchall()
                        if err_id == []:
                            raise psycopg2.errors.UndefinedTable

                        cur.execute(sql.SQL("""INSERT INTO {table} (err_id, quantity, time_st, week_day) VALUES ((select id from {table2} where err = %s ),%s, %s, %s)""").format(table = sql.Identifier('data'),
                                                                                                                                                                            table2 = sql.Identifier(self.table)),
                                    (tablename, quantity, timestmp, week_day))
                        #cur.execute(sql.SQL("""INSERT INTO {} (quantity, time_st, week_day) VALUES (%s, %s, %s)""").format(sql.Identifier(tablename)), (quantity, timestmp, week_day))
                        conn.commit()
                    break
                except psycopg2.errors.UndefinedTable:
                    conn.rollback()
                    print('found psy error')
                    #self.createtable(tablename)
                    with conn.cursor() as cur:
                        #cur.execute(sql.SQL("""CREATE TABLE {} (id serial NOT NULL, quantity integer NOT NULL, time_st timestamp NOT NULL, week_day integer NOT NULL)""").format(sql.Identifier(tablename)))
                        print(self.table,' aaaaa ',tablename)
                        cur.execute(sql.SQL("""INSERT INTO {table} ({column}) VALUES (%s)""").format(table = sql.Identifier(self.table), column = sql.Identifier('err')), (tablename,))
                        #cur.execute(sql.SQL("""INSERT INTO errors (err) VALUES ('ОШИБКАААА')"""))
                        conn.commit()
                finally:
                    conn.close()
                conn.close()






    def Save_in_bd(self):
        datadic = self.parser()
        time_st = datadic.pop(0)
        for i in datadic:
            #print(self.datdic[i])
            tmp = self.datdic[i].split()
            quantity = int(tmp[0])
            error = ' '.join(tmp[1:])
            #print(type(time),' ddddd   ',type(quantity),' dds ', type(error))

            conn = psycopg2.connect(database = 'errstatistic',
                                    user = 'max',
                                    password = 'admin789',
                                    host = 'localhost',
                                    port = 5432)
            #conn.autocommit = True
            print('db opened')
            try:
                with conn.cursor() as cur:
                    query_err = sql.SQL("SELECT {field} FROM {table} WHERE {pkey} = '%s'").format(field = sql.Identifier('id'), table = sql.Identifier('errors'), pkey = sql.Identifier('err'))
                    cur.execute(query_err,(self.table))

#                    cur.execute(sql.SQL("""INSERT INTO {} (quantity, error, time_st) VALUES (%s, %s, %s)""").format(sql.Identifier(self.table)), (quantity, error, time_st))
#                    conn.commit()
            finally:
                conn.close()
            break

