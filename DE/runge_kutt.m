function [ T,X ] = runge_kutt( f,t,x0 )

T = t;
X = zeros(length(T), length(x0));
X(1,:) = x0;
mid = zeros(1,length(x0));

for i = 1:length(T)-1
    dt = T(i+1) - T(i);
    f1 = f(T(i), X(i,:));
    
    mid = X(i,:) + dt/2*f1';
    f2 = f(T(i)+dt/2, mid(1,:));
    
    mid = X(i,:) + dt/2*f2';
    f3 = f(T(i) + dt/2, mid(1,:));
    
    mid = X(i,:) + dt*f3';
    f4 = f(T(i) + dt, mid(1,:));
    
    X(i+1,:) = X(i,:) + dt/6*(f1+2*f2+2*f3+f4)';
end


end

