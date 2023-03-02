function [ y0 ] = Nearest( X,Y,x0 )
%Метод ближайшего соседа
%на вход принимает массив точек X, массив значений функции f(x),
%а также точку x0. Возвращает значение f(x0)

n = length(X);
y0 = Y(1);
min = abs(x0-X(1));

for i = 2:n
    if(abs(x0-X(i)) < min)
        y0 = Y(i);
        min = abs(x0-X(i));
    end
end
end

