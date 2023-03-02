clear
clc
close all

X = 0:45:360;
R = (rand(1,length(X)) - 0.5)./1.2
Y = sind(X) + R;
figure, stem(X,Y);

for i = 1:360
    x0 = i;
    y0 = Nearest(X,Y,x0);
    X1(i) = x0;
    Y1(i) = y0;
    
    y0 = Linear(X,Y,x0);
    Y2(i) = y0;
    
    y0 = Newton(X,Y,x0);
    Y3(i) = y0;
    
    y0 = Lagrange(X,Y,x0);
    Y4(i) = y0;
    
    y0 = MNK(X,Y,x0,3);
    Y5(i) = y0;
    
    y0 = Spline(X,Y,x0);
    Y6(i) = y0;
end

figure(2), plot(X1,Y3, X1,Y4,X1,Y5, X1,Y6);
legend('Newton', 'Lagrange','MNK','Spline');

