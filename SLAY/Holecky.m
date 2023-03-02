function [ X ] = Holecky( A,B )
%Аргуметны: А - матрица, В - столбец свободных коэффицентов
%Решает СЛАУ методом Холецкого
L = LLT(A);
Y = direct_p(L,B);
X = reverse_p(L,Y);


end

