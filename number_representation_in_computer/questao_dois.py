'''
Arquivo que contém primeira questão da lista 2.
'''
from questao_um import numero_primo


def soma_numero_primo(numero=None):
    soma = 0
    if numero is None or numero == 0:
        print('Número não digitou nenhum número válido.')
        print('Digite um número maior ou igual a 1.')
    else:
        primos = [i for i in range(1, numero + 1) if numero_primo(i)]
        for _, value in enumerate(primos):
            soma = soma + value
        print(f'A soma de todos os numeros primos é {soma}.')
