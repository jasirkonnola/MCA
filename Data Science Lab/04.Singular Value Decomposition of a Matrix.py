from numpy import matrix
from numpy import matmul
from numpy import diag
from scipy.linalg import svd

A=matrix([[1,2,3],
          [4,5,6],
          [7,8,8]])
print (A)
print()
U, S, V = svd(A)
print(U)
print()
print(S)
print()
print(V)
print()

Sigma = diag(S)
print(Sigma)
print()
B =  matmul(U,matmul(Sigma,V))
print(B)
