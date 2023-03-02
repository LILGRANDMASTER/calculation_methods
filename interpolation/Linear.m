function [ y0 ] = Linear( X,Y,x0 )
%�������� ������������
%�� ���� ��������� ������ ����� X, ������ �������� ������� f(x),
%� ����� ����� x0. ���������� �������� f(x0)

i = 1;
n = length(X);

while(i < n)
    if (X(i) <= x0) && (X(i+1) >= x0)
        break;
    end
    i = i + 1;
end

a = (Y(i+1)-Y(i))/(X(i+1)-X(i));
b = Y(i) - a*X(i);

y0 = a*x0 + b;
end

