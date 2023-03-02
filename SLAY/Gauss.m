function [ X ] = Gauss( A,B )
%функуия принимает матрицу A и столбец свободных коэффицентов B
%Функция решает СЛАУ методом Жордана-Гаусса

n = length(A);
M = zeros(n,n+1);
M(:,1:n) = A;
M(:,n+1) = B;

X = B;
for i=1:n
    if M(i,i)==0
        for j=1:n
            if M(i,j)~=0
                M(i,1:n+1)= M(i,1:n+1)+ M(j,1:n+1);
                break;
            end
        end
        if M(i,i) == 0
            X = [];
            return
        end
    end
    
    M(i,1:n+1) = M(i,1:n+1)/M(i,i);
    for j = 1:n
        if j~=i
            M(j,1:n+1) = M(j,1:n+1)-M(i,1:n+1)*M(j,i);
        end
    end
    
    X = M(:,n+1);

end

