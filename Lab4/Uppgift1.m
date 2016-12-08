%%
%A
A = [1 3;5 -2];
B = [6;13];

l1=@(x1)(B(1)-A(1,1)*x1)/A(1,2);
l2=@(x1)(B(2)-A(2,1)*x1)/A(2,2);
x1=[0 5];
plot(x1,l1(x1),'b','linewidth',2), hold on
plot(x1,l2(x1),'g','linewidth',2)
xlabel('x_1'), ylabel('x_2')
axis equal, axis([0 5 -3 3])


R = rref([A B])
x=[3;1];
plot(x(1),x(2),'ro','markersize',3,'linewidth',4), hold off
%Ingen Skärningspunkt


%%
%B
A = [1 3;2 6];
B = [5;12];

l1=@(x1)(B(1)-A(1,1)*x1)/A(1,2);
l2=@(x1)(B(2)-A(2,1)*x1)/A(2,2);
x1=[0 5];
plot(x1,l1(x1),'b','linewidth',2), hold on
plot(x1,l2(x1),'g','linewidth',2)
xlabel('x_1'), ylabel('x_2')
axis equal, axis([0 5 -3 3])


%%
A = [1 3;2 6];
B = [5;10];

l1=@(x1)(B(1)-A(1,1)*x1)/A(1,2);
l2=@(x1)(B(2)-A(2,1)*x1)/A(2,2);
x1=[0 5];
plot(x1,l1(x1),'b','linewidth',2), hold on
plot(x1,l2(x1),'g','linewidth',2)
xlabel('x_1'), ylabel('x_2')
axis equal, axis([-1 6 -5 5])

%%
A1 = [1 3; 2 6];
b1 = [5;12];
b2 = [5; 10];
R1 = rref([A1 b1]);
R2 = rref([A1 b2]);
%plot(x(1),x(2),'ro','markersize',3,'linewidth',4), hold off;
%R1
xt=@(t)[t;(0-t)/3];
P=[xt(0) xt(2)];
plot(P(1,:),P(2,:),'b','linewidth',3),hold on
%R2
xt=@(t)[t;(5-t)/3];
P=[xt(0) xt(2)];
plot(P(1,:),P(2,:),'g','linewidth',3)
