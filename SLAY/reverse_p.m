function [ X ] = reverse_p( L,Y )
n = length(Y);
X = zeros(n,1);
L = L';

for i = n:-1:1
    s = 0;
    for j = i+1:n
        s = s + L(i,j)*X(j);
    end
    X(i) = (Y(i) - s)/L(i,i);
end


end

