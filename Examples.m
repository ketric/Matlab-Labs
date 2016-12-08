%% ex
x=linspace(0,2*pi);
f=sin(x);
g=sin(4*x);
plot(x,f,'black',x,g,'red')
xlabel('x')
ylabel('y')
title('sin(x) och sin(4x)')
grid on

%% ex1
s=3+4+5+...+52

%% ex2
s=0;
for i =3:52
    s=s+i;
end
disp('Summan är')
disp(s)

%% ex3
%Figure 1
x=[0.1 0.8 0.9 0.1];
y=[0.2 0.1 0.7 0.2];
subplot(1,2,1) % Delar in Figure i 1x2 delar och gör 1:a aktivt
plot(x,y,'-o') % ’-o’ färbinder med räta linjer och markerar med ringar
axis([0 1 0 0.8]) % Ger lite "luft" runt triangeln
grid on

%Figure 2
subplot(1,2,2) % Delar in Figure i 1x2 delar och gör 2:a aktivt
fill(x,y,'green') % Fyller triangeln med grön färg
axis([0 1 0 0.8])
grid on