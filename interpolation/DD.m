function [ y ] = DD( X,Y )

n = length(X);
y = 0;
for i = 1:n
    m = 1;
    for k = 1:n
        if k~=i
            m = m*(X(i)-X(k));
        end
    end
    
    y = y + Y(i)/m;
end

end

