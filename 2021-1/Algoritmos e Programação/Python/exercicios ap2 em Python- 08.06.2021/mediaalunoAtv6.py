n1 = float(input('Digite a primeira nota: '))
n2 = float(input('Digite a segunda nota: '))
n3 = float(input('Digite a terceira nota: '))

media = (n1+(n2*2)+(n3*3))/6

print('\nSua média foi {:.2f}.'.format(media))

if media >= 7:
    print('Parabéns! Você está aprovado(a)!')

elif (media >= 5) and (media < 7):
    print('Você está em recuperação.')

elif media < 5:
    print('Que pena! Você está reprovado(a).')
