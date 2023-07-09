from dataclasses import dataclass

@dataclass
class Carro: 
    IDcarro: int
    Modelo: str
    Placa: str
    ID_marca: int

@dataclass
class Marca:
    IDmarca: int
    Marca: str
