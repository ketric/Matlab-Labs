%%
x=[0.2 0.8 0.8 0.2];
y=[0.4 0.2 0.6 0.4];
subplot(1,2,1)
axis([0 1 0 1])
plot(x,y,'-o')
fill(x,y,'b')
Uppgift31(x,y)

%%
x=[0.1 0.1 0.8 0.8 0.1];
y=[0.1 0.6 0.6 0.1 0.1];
subplot(1,2,2)  
plot(x,y,'-o')
fill(x,y,'r')
axis([0 1 0 1])

Uppgift31(x,y)
