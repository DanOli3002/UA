# Pode correr o programa sem argumentos:
#   python3 shop
# ou passando outros ficheiros de produtos como argumento:
#   python3 shop produtos1.txt ...

def loadDataBase(fname, produtos):
    """Lê dados do ficheiro fname e atualiza/acrescenta a informação num
    dicionário de produtos com o formato {código: (nome, secção, preço, iva), ...}.
    """
    with open(fname, 'r') as fileobj:
        lines = fileobj.readlines()[1:]
        for line in lines:
           words = line.split(';')
           code = words[0]
           produtos[code] = (words[1], words[2], words[3], words[4].replace('\n', ''))


def registaCompra(produtos):
    """Lê códigos de produtos (ou códigos e quantidades),
    mostra nome, quantidade e preço final de cada um,
    e devolve dicionário com {codigo: quantidade, ...}
    """
    compras = dict()
    while True:
       code = input('Code? ')
       if code in produtos.keys():
          nomeProduto = produtos[code][0]
          quantidade = 1
          preçoFinal = round(float(produtos[code][2]) * (1 + float(produtos[code][3].strip('%')) / 100), 2)
          print(nomeProduto, quantidade, preçoFinal)
       
       if code == "":
          break
       if code in produtos.keys():
          if code not in compras.keys():
             compras[code] = 1
          else:
             compras[code] +=1
    return compras
       
       
       
       

def fatura(produtos, compra):
    """Imprime a fatura de uma dada compra."""


def main(args):
    # produtos guarda a informação da base de dados numa forma conveniente.
    produtos = {'p1': ('Ketchup.', 'Mercearia Salgado', 1.59, 0.23)}
    # Carregar base de dados principal
    loadDataBase("produtos.txt", produtos)
    # Juntar bases de dados opcionais (Não altere)
    for arg in args:
        loadDataBase(arg, produtos)
    
    
    # Use este código para mostrar o menu e ler a opção repetidamente
    MENU = "(C)ompra (F)atura (S)air ? "
    op = input(MENU).upper()
    while op != 'S':
       if op == 'C':
          compra = registaCompra(produtos)
       elif op == 'F':
          imprimirFatura = fatura(produtos, compra)
    print("Obrigado!")


# Não altere este código / Do not change this code
import sys
if __name__ == "__main__":
    main(sys.argv[1:])