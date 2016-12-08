H=[0 0.3 0 0.3 0 0.3 0 0.3; 0 0 0.3 0.3 0 0 0.3 0.3; 0 0 0 0 0.3 0.3 0.3 0.3];
S=[1 2 4 3; 1 2 6 5; 1 3 7 5; 3 4 8 7; 2 4 8 6; 5 6 8 7];
figure(1)
hold on
H1 = zeros(size(S,1),4) ;
H2 = zeros(size(S,1),4) ;
H3 = zeros(size(S,1),4) ;
axis equal, axis on, view(20,10)
% Rotation along x axes 
th = linspace(0,2*pi) ;
for i = 1:length(th)
    Rx = [1 0 0 ; 0 cos(th(i)) -sin(th(i)); 0 sin(th(i)) cos(th(i))] ;
    % Rotate the vertices 
    H1 = zeros(size(H)) ;
    for j = 1:size(H,2)
        H1(:,j) = Rx*H(:,j) ;
    end
    %translation
    for k=1:size(S,1)    
        Si=S(k,:); 
        fill3(H1(1,Si),H1(2,Si),H1(3,Si),'g','facealpha',0.6)
        hold on
    end
    drawnow
    hold on
end
