import pymysql
from pprint import pprint
from classes import (
    Carro,
    Marca
)

'''conexao = pymysql.connect(
    host="localhost",
    user="root",
    password="Amnj5567",
    database="oficina"
)

cursor = conexao.cursor()
cursor.execute("""
    select * from carros;  
""")

linhas = cursor.fetchall()

for x in linhas:
    carro = Carro(
        IDcarro=x[0],
        Modelo=x[1],
        Placa=x[2],
        ID_marca=x[3]
    )
    sql = f"select * from marca where IDmarca = {carro.ID_marca};"
    cursor.execute(sql)

    resultado = cursor.fetchone()
    marca = Marca(IDmarca=resultado[0],
                  Marca=resultado[1])
    print(marca, carro)

conexao.close()
'''
carro = Carro.find_by_id(4)
print(carro)