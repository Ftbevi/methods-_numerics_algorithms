clear all
clc
format long e

A= [3 -4 1; 1 2 2; 4 0 -3];

b=[9;3;-2;];

n=3;

p=1:n;

tic;

for k=1:(n-1)
  pv = abs( A(k,k) );
  r=k;
  
  for i=(k+1):n
    
    if abs( A(i,k) ) > pv
      pv = abs( A(i,k) );
      r=i;
    endif
    
  endfor
  
  if pv == 0
    printf("Matriz A eh singular")
    break;
  endif;
  
  if( r != k )
    aux = p(k);
    p(k) = p(r);
    p(r) = aux;
    
    for j=1:n
      aux = A(k,j);
      A(k,j) = A(r,j);
      A(r,j) = aux;
    endfor;
    
  endif;
  
  
  for i=(k+1):n
    
    m = A(i,k)/A(k,k)
    A(i,k) = m;
    
    for j=(k+1):n
      
      A(i,j) = A(i,j) - m*A(k,j);
      
    endfor;
    

  
  endfor;
  
  
endfor


# resolucao dos sistemas triangulares
c=zeros(n,1);
for i=1:n
  r=p(i);
  c(i) = b(r);
endfor;


#Ly =c 
y=zeros(n,1);

for i=1:n
  
  soma = 0;
  
  for j=1:(i-1)
    soma = soma + A(i,j)*y(j);
  endfor;
  
  y(i) = c(i) - soma;
  
endfor;


#Ux = y
x=zeros(n,1);
for i=n:-1:1
  soma = 0;
  
  for j=(i+1):n
    
    soma = soma + A(i,j)*x(j)
    
  endfor;
  
  x(i) = (y(i)-soma)/A(i,i);
  
endfor;


x
L = tril(A, -1)+eye(n)
U = triu(A)
p

tempo = toc

