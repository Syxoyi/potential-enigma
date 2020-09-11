#!/usr/bin/python3

#import psycopg2
import analizys.db_data.postgresqlQuery as qwer

class GetSortDate():

    def __init__(self, serialid):
        self.test = 'hello'
        self.serialid = serialid
        # Список колонок
        # Список таблиц
        # Список условий

    def print_hello(self):
        print(self.test)

    def get_data_by_time(self):
        print(self.test)
        listoftables=

#        print(GetSortDate.somevariable)
        qwer.PsyQuery("data", ["quantity","week_day","serial_id"])
        print(self.serialid)
        print(query)

        #cur.commit()
        self.conn.close()
