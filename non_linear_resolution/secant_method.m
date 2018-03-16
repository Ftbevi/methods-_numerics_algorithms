function Xs = SecanteRaiz(Fun, Xa, Xb, Err, imax)
% SecanteRaiz determina a raiz de Fun = 0 usando o método da Secante.
% Variáveis de entrada:
%   Fun   Nome (string) da função que calcula Fun para um dado x.
%   a, b  Dois pontos na vizinhança da raiz (ambos de um mesmo lado da raiz
%     ou com a raiz entre si).
%   Err Erro máximo.
%   imax  Número máximo de iterações.
% Variável de saída:
%   Xs Solução.

for i = 1:imax
  FunXb = feval(Fun, Xb)
  Xi = Xb - FunXb*(Xa - Xb)/(feval(Fun, Xa) - FunXb);
  if abs((Xi-Xb)/Xb) < Err
    Xs = Xi;
    break
  end
  Xa = Xb;
  Xb = Xi;
end
if i == imax
  fprintf('A solução não foi obtida em iterações.\n', imax)
  Xs = ('Sem resposta');
end