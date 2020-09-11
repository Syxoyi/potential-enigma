#/usr/bin/python3

import psycopg2
from psycopg2 import sql

class PsyQuery():
    db_config = "dbname=errstatistic user=max password=admin789 host=localhost port=5432"

    def __init__(self, conn, table = "data", *args):
        self.test = 'hello'
        self.table = table
        self.args = args
        self.conn = psycopg2.connect(GetSortDate.db_config)

    def select_by_serial(self):
        print(self.args)
        #columns = ', '.join(self.args[0])
        #query = sql.SQL("""SELECT {args} FROM TABLE {table} WHERE SERIAL = %s""".format(args = sql.SQL(sql.Identifier(columns)),
        #                                                                              table = sql.Identifier(self.table)))
        #query = sql.SQL("""SELECT {fields} FROM TABLE {table} WHERE SERIAL = %s""".format(fields= sql.SQL('. ').join(sql.Identifier(x) for x in self.args[0]),
        #                                                                                table = sql.Identifier(self.table)))
        query = sql.SQL("""SELECT {fields} FROM TABLE {table} WHERE SERIAL = %s""").format(fields = sql.SQL(', ').join(map(sql.Identifier, self.args[0])),
                                                                                           table = sql.Identifier(self.table) # self.args(tuple with db columns) -> (list) -> into sql.Identifier -> concatenate into string
                                                                                           condition = sql.Placeholder()) # It is for "%s", eeee :D
        print(query.as_string(self.conn))
        import pdb; pdb.set_trace()  # XXX BREAKPOINT
        #return query

    def send_query
        cur = self.conn.cursor()
        cur.execute(query.select_by_serial(),(self.serialid,))
        #+print(cur.fetchall())
