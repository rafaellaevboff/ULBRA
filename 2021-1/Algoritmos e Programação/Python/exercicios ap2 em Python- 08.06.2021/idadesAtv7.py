idade = 0
a = 0
b = 0
# ao ser digitado -99 o programa deve encerrar

while idade != -99:
    idade = int(input('Digite uma idade: '))

    if idade < 21:
        a = a + 1
    elif idade > 50:
        b = b + 1
    elif idade == -99:
        break

print('\nTotal de pessoas com menos de 21 anos: {}'.format(a-1))
print('Total de pessoas com mais de 50 anos: {}'.format(b))
