%%
x=linspace(-1.5,1.5);
y=Uppgift4(x);
plot(x,y)
grid on

%linspace visar oss hur mycket värde på x och y axeln som vi kan se
%%
x=fzero(@Uppgift4,-1)

x=fzero(@Uppgift4,1)

%fzero letar efter nollställen
