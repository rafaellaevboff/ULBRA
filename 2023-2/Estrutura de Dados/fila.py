# FILA - FIFO (First in, first out -> primeiro a entrar, primeiro a sair)

def menu():
    print(
        """
        1- ENFILEIRAR #ENQUEUE
        2- DESENFILEIRAR #DEQUEUE
        3- EXIBIR PRIMEIRO #FIRST
        4- EXIBIR FILA
        -------------------------------
        5- ENFILEIRAR PRIORITÁRIO
        6- DESENFILEIRAR PRIORITÁRIO
        7- EXIBIR PRIMEIRO PRIORITÁRIO
        8- EXIBIR FILA PRIORITÁRIO
        -------------------------------
        0- SAIR
        """
    )

def enfileirar(lista, valor):
    lista.append(valor)

def desenfileirar(lista):
    if not lista:
        print("A lista está vazia!")
    else:
        lista.pop(0)

def exibir_primeiro(lista):
    if not lista:
        print("A lista está vazia!")
    else:
        print(f"O primeiro da lista é: {lista[0]}")

def exibir_fila(lista):
    if not lista:
        print("A lista está vazia!")
    else:
        for i in lista:
            print(i)

def chamar_proximo():


fila = ["Ana", "Tiago", "Paula"]
fila_prioritarios = ["Pedro", "Felipe", "Carlos", "Lucas", "Gustavo"]

contador_prioritarios = 0
historico = []

fila = [["Não Prioritários", "Paulo", "André"], ["Prioritários", "Tiago", "Vanessa"]]

while True:
    menu()
    opc = int(input("Escolha uma opção: "))

    if opc == 1:
        valor= input("Digite um nome para colocar na fila: ")
        enfileirar(fila, valor)
    elif opc == 2:
        desenfileirar(fila)
    elif opc == 3:
        exibir_primeiro(fila)
    elif opc == 4:
        exibir_fila(fila)
    elif opc == 5:
        valor= input("Digite um nome para colocar na fila: ")
        enfileirar(fila_prioritarios, valor)
    elif opc == 6:
        desenfileirar(fila_prioritarios)
    elif opc == 7:
        exibir_primeiro(fila_prioritarios)
    elif opc == 8:
        exibir_fila(fila_prioritarios)
    elif opc == 9: #chamar próximo(chamar 3 prioritários e um não prioritário, sempre nesta sequência)
        if contador_prioritarios < 3 and fila_prioritarios:
            print(f"Chamando próximo prioritário: {fila[0]}")
            desenfileirar(fila_prioritarios)
            contador_prioritarios += 1
        elif fila:
            print(f"Chamando próximo não prioritário: {fila[0]}")
            desinfileirar(fila)
            contador_prioritarios = 0
        else:
            print("Filas vazias.")
    elif opc == 10:
        exibir_fila(historico)
    elif opc == 0:
        break
    else:
        print("Digite uma opção válida!")