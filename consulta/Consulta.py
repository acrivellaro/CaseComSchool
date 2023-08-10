#
# acrivellaro
# 

import Connection
import colors

class Consulta():

    # --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --

    def __init__(self):
        obj = Connection.Connection ()
        [self.conn, self.my_cursor] = obj.get_connection ()

    # --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --

    def dashboard_periodo (self, periodo, noformat=False):

        if (periodo == '2022-XX'):
            periodo = "('2022-01', '2022-02', '2022-03','2022-04', '2022-05', '2022-06','2022-07', '2022-08', '2022-09','2022-10', '2022-11', '2022-12')"
        else:
            periodo = "('"+periodo+"')"

        s = {}

        # faturamento, numero transacoes, ticket medio
        sql = ("SELECT SUM(VALOR_VENDA), COUNT(VALOR_VENDA) FROM DATADRIVEN_CONSULTA.VENDAS WHERE ANO_MES IN "+periodo)
        self.my_cursor.execute (sql)
        data = self.my_cursor.fetchall ()
        s["faturamento"] = float(data[0][0])
        s["numero_transacoes"] = data[0][1]
        s["ticket_medio"] = s["faturamento"] / s["numero_transacoes"]
        
        sql = ("SELECT COD_CLIENTE, COUNT(COD_CLIENTE) FROM DATADRIVEN_CONSULTA.VENDAS "
               "WHERE   ANO_MES IN "+periodo + " "
               "GROUP BY COD_CLIENTE")
        self.my_cursor.execute (sql)
        data = self.my_cursor.fetchall ()

        # numero de clientes, frequencia de compra
        s["numero_clientes"] = 0
        s["frequencia_compra"] = 0
        for result in data:
            s["numero_clientes"] += 1
            s["frequencia_compra"] += result[1]
        
        s["frequencia_compra"] = s["frequencia_compra"] / s["numero_clientes"]

        # margem bruta
        sql = ("SELECT SUM(VALOR) FROM DATADRIVEN_CONSULTA.CUSTOS "
               "WHERE   ANO_MES IN "+periodo + " ")
        self.my_cursor.execute (sql)
        data = self.my_cursor.fetchall ()
        s['despesas'] = float(data[0][0])
        s['margem_bruta'] = (s["faturamento"] - s['despesas']) / s["faturamento"] * 100.0

        # faturamento funcionario
        sql = ("SELECT SUM(NUM_FUNCIONARIOS) FROM DATADRIVEN_CONSULTA.PESSOAL "
               "WHERE  ANO_MES IN "+periodo + " ")
        self.my_cursor.execute (sql)
        data = self.my_cursor.fetchall ()
        s['faturamento_funcionario'] = s["faturamento"] / float(data[0][0])

        # faturamento m2
        sql = ("SELECT SUM(METRAGEM) FROM DATADRIVEN_CONSULTA.ESCRITORIO "
               "WHERE  ANO_MES IN "+periodo + " ")
        self.my_cursor.execute (sql)
        data = self.my_cursor.fetchall ()
        s['faturamento_m2'] = s["faturamento"] / float(data[0][0])

        # formatar

        if (noformat == False):
            s["faturamento"] = "R$ {:,.2f}".format(s["faturamento"])
            s["numero_transacoes"] = "{:,.0f}".format(s["numero_transacoes"])
            s["ticket_medio"] = "R$ {:,.2f}".format(s["ticket_medio"])
            s["numero_clientes"] = "{:,.0f}".format(s["numero_clientes"])
            s["frequencia_compra"] = "{:,.2f}".format(s["frequencia_compra"])
            s['margem_bruta']  = "{:,.2f}".format(s["margem_bruta"]) + " %"
            s['faturamento_funcionario'] = "R$ {:,.2f}".format(s["faturamento_funcionario"])
            s['faturamento_m2'] = "R$ {:,.2f}".format(s["faturamento_m2"])


        return (s)

    # --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --

    def dashboard_indicador (self, indicador, periodo):

        _list = []
        datas = ['2022-01', '2022-02', '2022-03','2022-04', '2022-05', '2022-06','2022-07', '2022-08', '2022-09','2022-10', '2022-11', '2022-12']
        for periodo in datas:
            rc = self.dashboard_periodo (periodo, True)
            _list.append (rc[indicador])

        datasets = []
        s = {}
        s["data"] = _list
        s["backgroundColor"] =  colors.chartjs_colors[0]
        s["borderColor"] = colors.chartjs_colors[0]
        datasets.append(s)

        rc = {}
        rc["labels"] = datas
        rc["datasets"] = datasets

        return(rc)

    # --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --

    def dashboard_linha_produto (self, linha_produto, periodo, format=True):

        if (periodo == '2022-XX'):
            periodo = "('2022-01', '2022-02', '2022-03','2022-04', '2022-05', '2022-06','2022-07', '2022-08', '2022-09','2022-10', '2022-11', '2022-12')"
        else:
            periodo = "('"+periodo+"')"

        s = {}

        # faturamento, share faturamento
        sql = ("SELECT  SUM(VALOR_VENDA) "
               "FROM DATADRIVEN_CONSULTA.VENDAS_LINHA_PRODUTO "
               "WHERE   COD_LINHA_PRODUTO = %s AND "
               "        ANO_MES IN "+periodo)
        self.my_cursor.execute (sql, (linha_produto))
        data = self.my_cursor.fetchall ()

        try:
            faturamento_linha = float(data[0][0])
        except:
            faturamento_linha = 0

        sql = ("SELECT  SUM(VALOR_VENDA) "
               "FROM    DATADRIVEN_CONSULTA.VENDAS_LINHA_PRODUTO "
               "WHERE   ANO_MES IN "+periodo)
        self.my_cursor.execute (sql)
        data = self.my_cursor.fetchall ()
        faturamento = float(data[0][0])

        sql = ("SELECT  SUM(VALOR) "
               "FROM    DATADRIVEN_CONSULTA.CUSTOS_LINHA_PRODUTO "
               "WHERE   COD_LINHA_PRODUTO = %s AND "
               "        ANO_MES IN "+periodo)
        self.my_cursor.execute (sql, (linha_produto))
        data = self.my_cursor.fetchall ()

        try:
            custos_linha = float(data[0][0])
        except:
            custos_linha = 0


        if (format == True):
            s["faturamento_linha"] = "R$ {:,.2f}".format(faturamento_linha)
            s["share_linha"] = "{:,.2f}".format(faturamento_linha / faturamento * 100) + " %"
            try:
                s["margem_linha"] = "{:,.2f}".format(custos_linha / faturamento_linha * 100) + " %"
            except:
                s["margem_linha"] = "{:,.2f}".format(0) + " %"
        else:
            s["faturamento_linha"] = faturamento_linha
            s["share_linha"] = faturamento_linha / faturamento * 100
            try:
                s["margem_linha"] = custos_linha / faturamento_linha * 100
            except:
                s["margem_linha"] = 0

        return (s)

    # --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --

    def dashboard_indicador_produto (self, indicador, periodo):

        datasets = []
        datas = ['2022-01', '2022-02', '2022-03','2022-04', '2022-05', '2022-06','2022-07', '2022-08', '2022-09','2022-10', '2022-11', '2022-12']
        
        label = ['Sabonete', 'Shampoo', 'Lenço Umedecido', 'Creme Dental']
        j = 0
        for i in ['1', '2', '3', '4']:
            _list = []
            for periodo in datas:
                rc = self.dashboard_linha_produto (i, periodo, False)
                _list.append (rc[indicador])

            s = {}
            s["label"] = label[j]
            s["data"] = _list
            s["backgroundColor"] =  colors.chartjs_colors[j]
            s["borderColor"] = colors.chartjs_colors[j]
            datasets.append(s)
            j += 1

        rc = {}
        rc["labels"] = datas
        rc["datasets"] = datasets

        return(rc)
    
#  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --
#  T E S T E
#  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --  --

if __name__ == "__main__":
    obj = Consulta()
    obj.dashboard_periodo ('2022-01')

