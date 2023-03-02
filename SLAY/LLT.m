function [ L ] = LLT( A )

n = length(A);
L = zeros(n,n);

for i = 1:n
    
    for j = 1:i-1
        s = 0;
        for k = 1:j-1;
            s = s + L(i,k)*L(j,k);
        end
        L(i,j) = (A(i,j) - s)/L(j,j);
    end
    s = 0;
    for j = 1:i-1
        s = s + L(i,j)^2;
    end
    
    L(i,i) = sqrt(A(i,i) - s);
end

