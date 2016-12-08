%%
%A)
format long
n = 0;
tol = 1e-5;
s = 0;
p = pi/4;
while true
    s = s +((-1)^n/(2*n+1));
    
    if abs(s - p) < tol
        break
    end
        n = n + 1;
end
s1 = (pi/4) - s;
disp ('Sum is:')
disp (s)


%%
%B)
s = 0;
for n = 0:999
    s = s + ((-1)^n/(2*n+1));
end
disp ('pi/4 in 1000 terms is:')
disp (s)