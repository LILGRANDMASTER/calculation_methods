function [ T,X ] = EK( f,t,x0 )

T = t;
X = zeros(length(T),length(x0));
X(1,:) = x0;

for i = 1:length(T)-1
    dt = T(i+1) - T(i);
    k1 = dt*f(T(i),X(i,:));
    X(i+1,:) = X(i,:) + k1';
    
    k2 = dt*f(T(i+1),X(i+1,:));
    X(i+1,:) = X(i,:) + (k1 + k2)'/2;
end


end

