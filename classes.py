from dataclasses import dataclass
import pymysql


class Base: 
    @classmethod
    def find_by_id(cls, id): 
        conexao = pymysql.connect(
            host="localhost",
            user="root",
            password="Amnj5567",
            database="oficina"
        )
        cursor = conexao.cursor()

        cursor.execute(f'select * from {cls.tabela} where idcarro = {id}')
        resultado = cursor.fetchone()
        cursor.close()
        conexao.close()

        return resultado


@dataclass
class Carro(Base): 
    tabela = 'carros'
    IDcarro: int
    Modelo: str
    Placa: str
    ID_marca: int


@dataclass
class Marca(Base):
    tabela = "marca"
    IDmarca: int
    Marca: str

@dataclass
class Cachorro:
    cor: str
    idade: int
    altura: float
    nome: str
    def latir(self):
        print(f'O cachorro {self.nome} está latindo: au au au')
