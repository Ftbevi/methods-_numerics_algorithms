function Xs = NewtonRaiz(Fun, FunDer, Xest, Err, imax)
% NewtonRaiz determina a raiz de Fun = 0 na vizinhança do ponto Xest usando
%     o método de Newton.
% Variáveis de entrada:
%   Fun    Nome (string) da função que calcula Fun para um dado x.
%   FunDer Nome (string) da função que calcula a derivada de Fun para um dado x.
%   Xest   Estimativa inicial da função.
%   Err    Erro máximo.
%   imax   Número máximo de iterações.
% Variável de saída:
%   Xs Solução 

for i = 1:imax
  Xi = Xest - feval(Fun, Xest)/feval(FunDer, Xest)
  if abs((Xi-Xest)/Xest) < Err4
    Xs = Xi;
    break
  end
  Xest = Xi;
end
if i == imax 
  fprintf('A Solução não foi obtida em %i iterações.\n', imax)
  Xs = ('Sem resposta');
end