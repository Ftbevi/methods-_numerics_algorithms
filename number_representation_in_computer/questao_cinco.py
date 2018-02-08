'''
Arquivo que contém primeira questão da lista 5.
'''


def calcular_pi(numero):
    somatorio = 0
    for i in range(1, numero + 1):
        exp = i - 1
        somatorio += ((-1)**exp) * (1 / (2 * i - 1))
    print(somatorio * 4)
