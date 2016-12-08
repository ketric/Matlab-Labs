A = [1 5 9; 2 6 10; 3 7 11; 4 8 12;]
B = [4 5 6; 3 2 1; 1 1 1;]
x = [1;1;1;]
a = [-1 0 1]

Ax = A*x
Bx = B*x
AB = A*B
ax = a*x
xa = x*a
aB = a*B

[m,p] = size(A);
y = zeros(m,1);
for i = 1:m
    s=0;
    for j=1:p
        s=s+A(i,j) * x(j);
    end
    y(i)=s;
end
y


