%% Task 2
clear 
clc

td = [1 2 3 4 5 6 7 8 9 10 11 12]';
yd = [-0.9 -0.9 2.0 6.0 11.6 15.5 16.6 16.2 12.8 9.1 4.4 1.0]';

A = [ones(size(td)) sin(30 * td) cos(30 * td)];
x = A\yd;
a = x(1);
b = x(2);
n=length(td);
e = norm(A*x-yd)/sqrt(n);

hold on
for i = 1:12
    scatter(td(i), yd(i),'filled') 
end

[p1,S] = polyfit(td,yd,7);
plot(td, polyval(p1,td),'r--')
grid on,hold off