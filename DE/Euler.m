function [ T,X ] = Euler( f,t,x0 )

T = t;
X = zeros(length(t), length(x0));
X(1,:) = x0;

for i = 1:length(T)-1;
    dt = T(i+1) - T(i);
    k = dt*f(T(i), X(i,:));
    X(i+1,:) = X(i,:) + k';
end

end

