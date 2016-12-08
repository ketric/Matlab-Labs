
clf;
xmin = -2; xmax = 2; ymin = -2; ymax = 2;
a = 1; b = -1; c = 4; d = 1;

X = [xmin xmax xmax xmin];
Y = [ymin ymin ymax ymax];
Z = (1 - a*X - b*Y) / c;

fill3(X, Y, Z, 'g', 'facealpha', 0.7);
xlabel('x');
ylabel('y');
axis equal, grid on;
view(20, 10);

H = [0 1 0 1 0 1 0 1;
     0 0 1 1 0 0 1 1;
     0 0 0 0 1 1 1 1];

S = [1 2 4 3;
     1 2 6 5;
     1 3 7 5;
     3 4 8 7;
     2 4 8 6;
     5 6 8 7];
 
figure(1);
hold on;
t = [1; -0.5; 2];

n = [a; b; c]; % normal

% sätter kub i startpos
for i = 1:8
    H(:,i) = H(:,i) + t;
end

% ritar upp kuben
for i = 1:size(S, 1)
    Si = S(i,:); fill3(H(1,Si), H(2,Si), H(3,Si), 'g', 'facealpha', 0.7);
end

H2 = H;

for i = 1:4
    corner = H(:, i);
    angle = (d - dot(n, corner)) / dot(n, n);
    projection = corner + angle * n;
    G(1, i) = projection(1);
    G(2, i) = projection(2);
    G(3, i) = projection(3);
end

% ritar ut projektionen av projection i planet
Si = S(1,:);
fill3(G(1,Si), G(2,Si), G(3,Si), 'b', 'facealpha', 0.7);

H3 = H;
% ändrar koordinaterna i H till spegling
% ritar cirklar i varje hörn
for i = 1:8
    corner = H(:, i);
    angle = (d - dot(n, corner)) / dot(n, n);
    projection = corner + 2*(angle * n);
    H(1, i) = projection(1);
    H(2, i) = projection(2);
    H(3, i) = projection(3);

end

for i = 1:size(S, 1)
    Si = S(i,:); fill3(H(1,Si), H(2,Si), H(3,Si), 'g', 'facealpha', 0.7);
end
