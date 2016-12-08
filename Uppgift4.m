xmin=-2; xmax=2; ymin=-2; ymax=2;
a=1; b=-1; c=4; d=1; s=2; z=0.25;
X=[xmin xmax xmax xmin]; 
Y=[ymin ymin ymax ymax];
Z=(d-a*X-b*Y)/c;
fill3(X,Y,Z,'g','facealpha',0.7)
xlabel('x'), ylabel('y')
axis equal, grid on, hold on

point = [0 0 1/4];
velocity = [1 -1 4]; %[a b c]riktning av vektorn

normalVector = point + velocity; %pos av normalvektorn
quiver3(point(1), point(2), point (3), normalVector(1), normalVector(2), normalVector(3));

