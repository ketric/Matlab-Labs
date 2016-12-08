%%
%A
A=[-3 1 2; 3 -2 1; -1 5 1]; B=[2;1;1];

l1=@(x1,x2)(B(1)-A(1,1)*x1-A(1,2)*x2)/A(1,3);
l2=@(x1,x2)(B(2)-A(2,1)*x1-A(2,2)*x2)/A(2,3);
l3=@(x1,x2)(B(3)-A(3,1)*x1-A(3,2)*x2)/A(3,3);
x1=linspace(-1,1,30); x2=linspace(-1,1,30);
[X1,X2]=meshgrid(x1,x2);
surf(X1,X2,l1(X1,X2),'facecolor','b'), hold on
surf(X1,X2,l2(X1,X2),'facecolor','g')
surf(X1,X2,l3(X1,X2),'facecolor','cyan')
xlabel('x_1'), ylabel('x_2'), zlabel('x_3')
axis([-1 2 -1 2 -4 7]), axis vis3d, grid on, box on

R=rref([A B])
x=[0;0;1];
plot3(x(1),x(2),x(3),'ro','markersize',5,'linewidth',4)
xlabel('x_1'), ylabel('x_2'), zlabel('x_3')
axis([-1 1 -1 1 -4 7]), axis vis3d, grid on, box on, hold off



%%
%B
A = [-3 1 2; 3 -2 1; 3 -4 7];
B = [2;1;1];

l1=@(x1,x2)(B(1)-A(1,1)*x1-A(1,2)*x2)/A(1,3);
l2=@(x1,x2)(B(2)-A(2,1)*x1-A(2,2)*x2)/A(2,3);
l3=@(x1,x2)(B(3)-A(3,1)*x1-A(3,2)*x2)/A(3,3);
x1=linspace(-1,1,30); x2=linspace(-1,1,30);
[X1,X2]=meshgrid(x1,x2);
surf(X1,X2,l1(X1,X2),'facecolor','b'), hold on
surf(X1,X2,l2(X1,X2),'facecolor','g')
surf(X1,X2,l3(X1,X2),'facecolor','cyan')
xlabel('x_1'), ylabel('x_2'), zlabel('x_3')
axis([-1 2 -1 2 -4 7]), axis vis3d, grid on, box on

%inga lösningar
R=rref([A B])
xt=@(t)[1.6667*t;3*t;t]
P=[xt(0) xt(2)];
plot3(P(1,:),P(2,:),P(3,:),'r','linewidth',3), hold off

%%
A = [-3 1 2; 3 -2 1; 3 -4 7];
B = [2;1;7];
plot3(x(1),x(2),x(3),'ro','markersize',5,'linewidth',4)
xlabel('x_1'), ylabel('x_2'), zlabel('x_3')
axis([-1 1 -1 1 -4 7]), axis vis3d, grid on, box on, hold off
l1=@(x1,x2)(B(1)-A(1,1)*x1-A(1,2)*x2)/A(1,3);
l2=@(x1,x2)(B(2)-A(2,1)*x1-A(2,2)*x2)/A(2,3);
l3=@(x1,x2)(B(3)-A(3,1)*x1-A(3,2)*x2)/A(3,3);
x1=linspace(-1,1,30); x2=linspace(-1,1,30);
[X1,X2]=meshgrid(x1,x2);
surf(X1,X2,l1(X1,X2),'facecolor','b'), hold on
surf(X1,X2,l2(X1,X2),'facecolor','g')
surf(X1,X2,l3(X1,X2),'facecolor','cyan')
xlabel('x_1'), ylabel('x_2'), zlabel('x_3')
axis([-1 2 -1 2 -4 7]), axis vis3d, grid on, box on

R=rref([A B])
xt=@(t)[-1.6667+1.6667*t;-3+3*t;t]
P=[xt(0) xt(2)];
plot3(P(1,:),P(2,:),P(3,:),'r','linewidth',3), hold off
