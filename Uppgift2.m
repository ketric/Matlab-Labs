x=0:0.1:4*pi;       %radvektor x av x-v�rden mellan o och 4pi
%f�r v�rdena 0, 0.1, 0.2, 0.3... s� n�ra 4pi som m�jligt
f=sin(x)+0.3*sin(5*x);   
%ritar grafen
plot(x,f,'black')
