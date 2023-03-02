function [ y0 ] = Lagrange( X,Y, x0 )
%Интерполяция Лагранжа
%на вход принимает массив точек X, массив значений функции f(x),
%а также точку x0. Возвращает значение f(x0)

n = length(X);
y0 = 0;
for i = 1:n
    m1 = 1;
    for k = 1:n
        if k ~= i
            m1 = m1*(x0 - X(k));
        end
    end
    
    m2 = 1;
    for k = 1:n
        if k ~= i
            m2 = m2*(X(i) - X(k));
        end
    end
    
    y0 = y0 + Y(i)*(m1/m2);
end

end

