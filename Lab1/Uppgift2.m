x=0:0.1:4*pi;       %radvektor x av x-värden mellan o och 4pi
%får värdena 0, 0.1, 0.2, 0.3... så nära 4pi som möjligt
f=sin(x)+0.3*sin(5*x);   
%ritar grafen
plot(x,f,'black')
