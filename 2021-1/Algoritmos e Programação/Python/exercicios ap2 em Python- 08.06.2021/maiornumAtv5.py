maiornum = 0
num1 = int(input('Digite um numero: '))
num2 = int(input('Digite outro número: '))
num3 = int(input('Digite outro número: '))

if num1 > maiornum:
    maiornum = num1
if num2 > maiornum:
    maiornum = num2
if num3 > maiornum:
    maiornum = num3

print('\nO maior número é {}.'.format(maiornum))
