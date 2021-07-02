b = 0
c = 0
d = 0
e = 0
idade = 1

while idade != '0':
    idade = int(input('\nDigite sua idade: '))

    if (idade > 0) and (idade < 16):
        b = b + 1
        print('Não eleitor.')

    elif (idade >= 16) and (18 > idade):
        c = c + 1
        print('Eleitor, com voto facultativo.')

    elif idade >= 70:
        d = d + 1
        print('Eleitor, com voto facultativo')

    elif (idade >= 18) and (idade < 70):
        e = e + 1
        print('Eleitor, com voto obrigatório.')

    else:
        break

total = c + d + e

print('\nO número de eleitores no total é: {}'.format(total))
print('O número de eleitores com voto obrigatório é: {}'.format(e))
print('O número de não eleitores é: {}'.format(b))
