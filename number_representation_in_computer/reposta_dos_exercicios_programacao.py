from questao_um import numero_primo
from questao_dois import soma_numero_primo
from questao_cinco import calcular_pi

VALORES_QUESTAO_UM = [79, 126, 367]
VALOR_QUESTAO_DOIS = 30
VALORES_QUESTAO_CINCO = [10, 20, 40]

print('-----------------------------')
print('------- Questão 1 -----------')
for _, value in enumerate(VALORES_QUESTAO_UM):
    numero_primo(value)
print()
print()
print('-----------------------------')
print('------- Questão 2 -----------')
soma_numero_primo(30)
print()
print()
print('-----------------------------')
print('------- Questão 5 -----------')
for _, value in enumerate(VALORES_QUESTAO_CINCO):
    calcular_pi(value)
