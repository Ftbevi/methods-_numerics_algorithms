'''
Arquivo que contém primeira questão da lista 1.
'''


def numero_primo(numero=0):
    '''
    Função para calcular número primo
    '''
    if not numero:
        numero = int(input('Digite o número: '))
    divisores = [i for i in range(1, numero + 1) if (numero % i) == 0]
    if len(divisores) > 2:
        return False
    print(f'número {numero} é primo!')
    return True
