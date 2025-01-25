import pyodbc

dados_conexao = (
    "Driver={SQL Server};"
    "Server=DESKTOP-J11QNPU\SQLEXPRESS;" #Inserir o nome do servidor em que o DB está localizado.
    "Database=lojaeletronicos;"  #Inserir o nome do banco de dados criado.

)

conexao = pyodbc.connect(dados_conexao)
print ("Inserção realizada com sucesso")

cursor = conexao.cursor()

id_cliente = 10
nome_cliente = "Jaime Pedrosa"
produto = "RTX 3060"
cidade = "Belem"
estado = "PA"
data_venda = "2024/01/28"
preco = "3000"
quantidade = 1

comando = f"""INSERT INTO Vendas (id_cliente, nome_cliente, produto, cidade, estado, data_venda, preco, quantidade)
VALUES 
({id_cliente}, '{nome_cliente}', '{produto}', '{cidade}', '{estado}','{data_venda}', {preco}, {quantidade})""" 

cursor.execute(comando)
cursor.commit()
