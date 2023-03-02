function [ y0 ] = MNK( X,Y, x0, m )
%Метод наименьших квадратов

n = length(X);
m = m + 1;
A = zeros(m,m);
B = zeros(m,1);

for i = 1:m
    for j = 1:m
        s = 0;
        for k = 1:n
            s = s + X(k)^(i - 1 + j - 1);
        end
        A(i,j) = s;
    end
end


for i = 1:m
    s = 0;
    for j = 1:n
        s = s + Y(j)*X(j)^(i-1);
    end
    B(i) = s;
end

U = A^(-1)*B;


y0 = 0;
for i = 1:m
    y0 = y0 + U(i)*x0^(i-1);
end

end

