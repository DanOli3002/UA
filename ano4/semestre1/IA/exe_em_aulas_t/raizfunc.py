# encontrar a raiz da função f no intervalo [a, b]
# Função divide ao meio no intervalo e chama-se
# a si própria recursivamente sobre a metade do intervalo
# em cujos extremos f tem valoes de sinais opostos
def raizfunc(f,a,b,e):
    if f(a)*f(b) > 0:
        return None
    meio = (a+b)/2
    if b - a < e:
        return meio
    if f(a)*f(meio) < 0:
        return raizfunc(f,a,meio,e)
    return raizfunc(f,meio,b,e)

f = lambda x: x**2 - 2
raiz = raizfunc(f,1,3,0.0001)

print(raiz)
print(round(f(raiz),3))
    