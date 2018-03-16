"""

"""

INTERVALO_A = None
INTERVALO_B = None
TOLERANCIA = None

vetor_solucao = []


def function_non_linear():
    pass


def verify_intervalo_valido():
    pass


def bissecao_method(intervalo_a=INTERVALO_A,
                    intervalo_b=INTERVALO_B):
    pass


def main():
    if not INTERVALO_A and not INTERVALO_B:
        intervalo_a = int(input('Digite o intervalo a: '))
        intervalo_b = int(input('Digite o intervalo b: '))
        bissecao_method(intervalo_a, intervalo_b)
    else:
        bissecao_method()


if __name__ == '__main__':
    main()
