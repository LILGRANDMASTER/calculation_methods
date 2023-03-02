clear all
close all force
clc

global InputStruct;
InputStruct.k1 = 10;
InputStruct.k2 = 15;
InputStruct.m1 = 2;
InputStruct.m2 = 9;
InputStruct.b1 = 2;
t = 0:0.01:40;
c = 8:12;
str = [strcat('k1 = ',num2str(c'))];



figure()
hold on
for i = 8:12
    InputStruct.k1 = i;
    [~,x] = ode45(@f,t,[0 0 0 0]);
    plot(t,x(:,1));
end
legend(str);
hold off
grid on
grid minor
xlabel('�����, c');
ylabel('���������� x1, �');

figure()
hold on
for i = 8:12
    InputStruct.k1 = i;
    [~,x] = ode45(@f,t,[0 0 0 0]);
    plot(t,x(:,2));
end
legend(str);
hold off
grid on
grid minor
xlabel('�����, c');
ylabel('���������� x2, �');

figure()
hold on
for i = 8:12
    InputStruct.k1 = i;
    [~,x] = ode45(@f,t,[0 0 0 0]);
    plot(t,x(:,3));
end
legend(str);
hold off
grid on
grid minor
xlabel('�����, c');
ylabel('�������� v1, �/c');

figure()
hold on
for i = 8:12
    InputStruct.k1 = i;
    [~,x] = ode45(@f,t,[0 0 0 0]);
    plot(t,x(:,4));
end
legend(str);
hold off
grid on
grid minor
xlabel('�����, c');
ylabel('�������� v2, �/c');


figure()
hold on
for i = 8:12
    InputStruct.k1 = i;
    [~,x] = ode45(@f,t,[0 0 0 0]);
    plot(x(:,1),x(:,3));
end
legend(str);
hold off
grid on
grid minor
title('������� �������');
xlabel('���������� x1, �');
ylabel('�������� v1, �/c');


figure()
hold on
for i = 8:12
    InputStruct.k1 = i;
    [~,x] = ode45(@f,t,[0 0 0 0]);
    plot(x(:,2),x(:,4));
end
legend(str);
hold off
grid on
grid minor
title('������� �������');
xlabel('���������� x2, �');
ylabel('�������� v2, �/c');

