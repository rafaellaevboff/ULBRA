num1 = int(input('Digite um número: '))
num2 = int(input('Digite outro número: '))
num3 = int(input('Digite outro número: '))

soma = num1 + num2 + num3
media = soma/3

print('\nA soma de {}, {} e {} é {}.'.format(num1, num2, num3, soma))
print('A média dos números lidos é {:.2f}.'. format(media))

if media > 20:
    print('SOMA MAIOR QUE 20.')
