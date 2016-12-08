clear                                                                       % Tömmer alla variabler
close                                                                       % Stänger alla grafikfönster
clc                                                                         % Tömmer kommandofönstret    
td=[5 6 7 8 9 10]';                                                         % t-data
yd=[19.5888 23.4043 25.5754 29.1231 31.9575 35.8116]';                      % y-data
A=[ones(size(td)) td];                                                      % Designmatrisen
c=A\yd; a=c(1); b=c(2);                                                     % Minsta-kvadratlösningen
n=length(td);                                                               % Antalet mätdata
e=norm(A*c-yd)/sqrt(n);                                                     % Kvadratiska medelfelet

p1 = polyfit(td,yd,1)

plot(td,yd,'o')
hold on
plot(td, polyval(p1,td),'r--')
title('Uppgift1')
xlabel('x')                                                                % Skriv text på x-axeln
ylabel('y')                                                                % Skriv text på y-axeln
legend('Mätdata' , sprintf('Linjär anpassning: y = %.4g x= %.4g ',p1));
grid on                                                                    % Rita rutnät (prickade ledlinjer)
 %a=3.9365
 %b=3.1520
 %e=0.3532
 %Task 1b
hold on
for i = 1:6
    scatter(td(i), yd(i),'filled') 
end

[p1,S] = polyfit(td,yd,7);
plot(td, polyval(p1,td),'ko--')
grid on,hold off

legend('Mätdata' , sprintf('Linjär anpassning: y = %.4g x= %.4g ',p1));