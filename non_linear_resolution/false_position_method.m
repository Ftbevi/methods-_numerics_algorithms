% Método Falsa Posição
% Dado um intevalo [a, b]
% 
%      Xk = a.F(b) - b.F(a)/2
%
% Tolerância: 
% |F(Xk)| < Erro estipulado 
%       ou
% |b-a| < Erro estipulado

clear all

F = inline('8 - 4.5*(x-sin(x))');

a = 2; b = 3;
imax = 20
tol = 0.001;

Fa = F(a);
Fb = F(b);

if Fa*Fb > 0
    disp('Erro: a Função tem o mesmo sinal nos pontos a e b.')
else
    disp('iteration  a  b  (xNS)  Solução  f(xNS)  tolerância.')
    for i=1:imax
        xNS = (a+b)/2;
        toli = (b-a)/2;
        FxNS = F(xNS)
        fprintf('%3i  %11.6f  %11.6f  %11.6f %11.6f  %11.6f\n', 
                  i, a, b, xNS, FxNS, toli)
        if FxNS == 0
            fprintf('Uma solução exata x =%11.6f foi obtida', xNS)
            break
        end
        if toli < tol
            break
        end
        if i == imax
            fprintf('Solução não obtida em in %i iterações', imax)
            break
        end
        if F(a)*FxNS < 0
            b = xNS;
        else
            a = xNS;
        end
    end
end