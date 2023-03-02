function [X] = Kramer( A,B )
%Функция принимает матрицу A и столбец свободных коэффицентов B
%Функция решает СЛАУ методом Крамера
n = size(B);
dA = det(A);
X = B;
if dA==0
    X=[];
    return;
end


for i=1:n
    T = A;
    T(:,i) = B;
    X(i) = det(T)/dA;
end

end

