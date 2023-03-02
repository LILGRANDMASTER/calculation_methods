function [ T,X ] = avg_point( f,t,x0 )

T = t;
X = zeros(length(T), length(x0));
midX = zeros(1,length(x0));
X(1,:) = x0;

for i = 1:length(T)-1;
    dt = T(i+1) - T(i);
    midX(1,:) = X(i,:) + dt/2*f(T(i),X(i,:))';
    k = dt*f(T(i) + dt/2, X(i,:));
    X(i+1,:) = X(i,:) + k';
end

end

