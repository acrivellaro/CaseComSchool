# acrivellaro

import pymysql

class Connection ():

    def __init__ (self):
        self.conn = pymysql.connect (host='localhost', user='root', password='#mysql1234#', db='', charset='utf8')
        self.cursor = self.conn.cursor ()

    def get_connection (self):
        return [self.conn, self.cursor]

