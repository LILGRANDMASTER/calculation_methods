function [ X ] = Holecky( A,B )
%���������: � - �������, � - ������� ��������� ������������
%������ ���� ������� ���������
L = LLT(A);
Y = direct_p(L,B);
X = reverse_p(L,Y);


end

