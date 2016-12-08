A = [11 4 3 7; 2 6 8 5; 9 12 1 10;]

B = [3;1;5]

C = [4 2 8 0 6]

%Hur ser man att den ena är en kolonnvektor och att den andra är en
%radvektor?
%m = rad     n=kolumn
[m,n] = size(B)

[m,n] = size(C)

%I vårt fall är m>1 och n=1 för att vi staplar siffrorna under varandra
%vår radvektor kommer alltid ha m=1 och n>=1


%Vad har elementen för rad resp kolonnindex?
%Size räknar kolumn inte rader
[maximum,i] = max(A)
[minimum,i] = min(A)

%max = RAD: 1 3 2 3 Kolumn: 1 2 3 4
%min = RAD: 2 1 3 2 Kolumn: 1 2 3 4
