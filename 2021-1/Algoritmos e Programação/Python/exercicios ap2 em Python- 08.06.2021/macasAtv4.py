soma = 0
maca = int(input('Digite quantas maçãs você deseja comprar: '))

if maca < 12:
    soma = maca * 1.30
elif maca >= 12:  # coloquei o '=' pro caso de comprar uma dúzia também para que haja um preço pra essa quantidade.
    soma = maca * 1

print('Comprando {} maçãs você irá pagar R${:.2f}.'.format(maca, soma))
