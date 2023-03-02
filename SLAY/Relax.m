function [ X ] = Relax( A,B,eps0,omega )
%��������� � �������� ����������:
%� - �������, � - ������� ��������� ������������
%eps0 - �������� ���������, omeg� - �� �� ���
%������� ������ ���� ������� ����������
n = length(A);
X = zeros(n,1);
X1 = zeros(n,1);
eps = eps0 + 1;

while(eps > eps0)
    for i = 1:n
        s = 0;
        for j = 1:n
            if j~=i
                s = s + A(i,j)*X(j);
            end
        end
        X(i) = (B(i) - s)/A(i,i);
        X(i) = omega*X(i) + (1-omega)*X1(i);
    end
    eps = sum(abs(X-X1));
    X1 = X;
end
end

