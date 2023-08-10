#
# acrivellaro
# 

import Connection


class CargaDados():

    # --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --

    def __init__(self):
        obj = Connection.Connection ()
        [self.conn, self.my_cursor] = obj.get_connection ()

    # --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --

    def carregar_receitas (self):

        sql = ("DELETE FROM DATADRIVEN_CONSULTA.VENDAS")
        self.my_cursor.execute (sql)


        sql = ("SELECT YEAR(DATA) AS YYYY, MONTH(DATA) AS MM, COD_CLIENTE, SUM(VALOR) "
               "FROM DATADRIVEN_TRANSACIONAL.VENDAS "
               "GROUP BY YYYY, MM, COD_CLIENTE")
               
        self.my_cursor.execute (sql)
        data = self.my_cursor.fetchall ()
        for result in data:
            yyyymm = ("%04d-%02d" % (result[0], result[1]))
            cod_cliente = result[2]
            valor = float(result[3])

            sql = ("INSERT INTO DATADRIVEN_CONSULTA.VENDAS VALUES (%s, %s, %s)")
            self.my_cursor.execute (sql, (yyyymm, cod_cliente, valor))

        self.conn.commit()

    # --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --

    def carregar_despesas (self):

        sql = ("DELETE FROM DATADRIVEN_CONSULTA.CUSTOS")
        self.my_cursor.execute (sql)

        # despesas
        sql = ("SELECT YEAR(DATA) AS YYYY, MONTH(DATA) AS MM, COD_AREA, SUM(VALOR) "
               "FROM DATADRIVEN_TRANSACIONAL.DESPESAS "
               "GROUP BY YYYY, MM, COD_AREA")
               
        self.my_cursor.execute (sql)
        data = self.my_cursor.fetchall ()
        for result in data:
            yyyymm = ("%04d-%02d" % (result[0], result[1]))
            cod_area = result[2]
            valor = float(result[3])

            sql = ("INSERT INTO DATADRIVEN_CONSULTA.CUSTOS VALUES (%s, %s, 'DESPESAS', %s)")
            self.my_cursor.execute (sql, (yyyymm, cod_area, valor))

        # folha de pagamento

        sql = ("SELECT YEAR(DATA) AS YYYY, MONTH(DATA) AS MM, COD_AREA, SUM(SALARIO) "
               "FROM DATADRIVEN_TRANSACIONAL.FUNCIONARIOS "
               "GROUP BY YYYY, MM, COD_AREA")
               
        self.my_cursor.execute (sql)
        data = self.my_cursor.fetchall ()
        for result in data:
            yyyymm = ("%04d-%02d" % (result[0], result[1]))
            cod_area = result[2]
            valor = float(result[3])

            sql = ("INSERT INTO DATADRIVEN_CONSULTA.CUSTOS VALUES (%s, %s, 'SALARIOS', %s)")
            self.my_cursor.execute (sql, (yyyymm, cod_area, valor))


        sql = ("SELECT YEAR(DATA) AS YYYY, MONTH(DATA) AS MM, SUM(VALOR_ALUGUEL) "
               "FROM DATADRIVEN_TRANSACIONAL.ESCRITORIOS "
               "GROUP BY YYYY, MM")
               
        self.my_cursor.execute (sql)
        data = self.my_cursor.fetchall ()
        for result in data:
            yyyymm = ("%04d-%02d" % (result[0], result[1]))
            cod_area = 0
            valor = float(result[2])

            sql = ("INSERT INTO DATADRIVEN_CONSULTA.CUSTOS VALUES (%s, %s, 'ALUGUEL', %s)")
            self.my_cursor.execute (sql, (yyyymm, cod_area, valor))

        # funcionarios

        sql = ("DELETE FROM DATADRIVEN_CONSULTA.PESSOAL")
        self.my_cursor.execute (sql)

        #
        # essa consulta devido as informações sigilosas pode ser uma API preparada pelo TI
        # ou acesso restrito a tabela para consulta em determinados campos
        #

        sql = ("SELECT YEAR(DATA) AS YYYY, MONTH(DATA) AS MM, COD_AREA, COUNT(COD_FUNCIONARIO) "
               "FROM DATADRIVEN_TRANSACIONAL.FUNCIONARIOS "
               "GROUP BY YYYY, MM, COD_AREA")
               
        self.my_cursor.execute (sql)
        data = self.my_cursor.fetchall ()
        for result in data:
            yyyymm = ("%04d-%02d" % (result[0], result[1]))
            cod_area = result[2]
            num_funcionarios = float(result[3])

            sql = ("INSERT INTO DATADRIVEN_CONSULTA.PESSOAL VALUES (%s, %s, %s)")
            self.my_cursor.execute (sql, (yyyymm, cod_area, num_funcionarios))

        # escritorios

        sql = ("DELETE FROM DATADRIVEN_CONSULTA.ESCRITORIO")
        self.my_cursor.execute (sql)

        sql = ("SELECT YEAR(DATA) AS YYYY, MONTH(DATA) AS MM, COD_ESCRITORIO, SUM(AREA_M2) "
               "FROM DATADRIVEN_TRANSACIONAL.ESCRITORIOS "
               "GROUP BY YYYY, MM, COD_ESCRITORIO")
               
        self.my_cursor.execute (sql)
        data = self.my_cursor.fetchall ()
        for result in data:
            yyyymm = ("%04d-%02d" % (result[0], result[1]))
            cod_escritorio = result[2]
            area_m2 = float(result[3])

            sql = ("INSERT INTO DATADRIVEN_CONSULTA.ESCRITORIO VALUES (%s, %s, %s)")
            self.my_cursor.execute (sql, (yyyymm, cod_escritorio, area_m2))



        self.conn.commit()


    # --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --

    def carregar_vendas (self):

        sql = ("DELETE FROM DATADRIVEN_CONSULTA.VENDAS_LINHA_PRODUTO")
        self.my_cursor.execute (sql)


        sql = ("SELECT  YEAR(DATA) AS YYYY, MONTH(DATA) AS MM, COD_LINHA_PRODUTO, SUM(V.VALOR) "
               "FROM    DATADRIVEN_TRANSACIONAL.VENDAS V, DATADRIVEN_TRANSACIONAL.PRODUTOS P "
               "WHERE   V.COD_PRODUTO = P.COD_PRODUTO "
               "GROUP BY YYYY, MM, COD_LINHA_PRODUTO")
               
        self.my_cursor.execute (sql)
        data = self.my_cursor.fetchall ()
        for result in data:
            yyyymm = ("%04d-%02d" % (result[0], result[1]))
            cod_linha_produto = result[2]
            valor = float(result[3])

            sql = ("INSERT INTO DATADRIVEN_CONSULTA.VENDAS_LINHA_PRODUTO VALUES (%s, %s, %s)")
            self.my_cursor.execute (sql, (yyyymm, cod_linha_produto, valor))

        self.conn.commit()


    # --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --

    def carregar_custos (self):

        sql = ("DELETE FROM DATADRIVEN_CONSULTA.CUSTOS_LINHA_PRODUTO")
        self.my_cursor.execute (sql)

        sql = ("SELECT ANO_MES, SUM(VALOR) FROM DATADRIVEN_CONSULTA.CUSTOS GROUP BY ANO_MES")
        self.my_cursor.execute (sql)
        data = self.my_cursor.fetchall ()
        for result in data:

            yyyymm = result[0]
            valor = result[1]

            sql = ("SELECT COD_LINHA_PRODUTO, VALOR_VENDA FROM DATADRIVEN_CONSULTA.VENDAS_LINHA_PRODUTO WHERE ANO_MES = %s")
            self.my_cursor.execute (sql, (yyyymm))
            data_2 = self.my_cursor.fetchall ()            

            sum = 0
            for result_2 in data_2:
                sum += result_2[1]

            for result_2 in data_2:
                custo = result_2[1] / sum * valor
                sql = ("INSERT INTO DATADRIVEN_CONSULTA.CUSTOS_LINHA_PRODUTO VALUES (%s, %s, %s)")
                self.my_cursor.execute (sql, (yyyymm, result_2[0], custo))

        self.conn.commit()



if __name__ == "__main__":
    obj = CargaDados()
    #obj.carregar_receitas ()
    #obj.carregar_despesas ()
    #obj.carregar_vendas()
    obj.carregar_custos ()

