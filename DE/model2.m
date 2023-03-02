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
x0 = [0 0 0 0];
c = 0:0.01:0.1;
str1 = [strcat('x1 = ',num2str(c'))];
str2 = [strcat('x2 = ',num2str(c'))];
str3 = [strcat('v1 = ',num2str(c'))];
str4 = [strcat('v2 = ',num2str(c'))];

subplot(2,2,1)
hold on
for i = 0:0.01:0.1
    [~,x] = ode45(@f,t,x0);
    plot(t,x(:,1));
    grid on
    grid minor
    x0(1) = i;
end
xlabel('Время, c');
ylabel('Координата x1, м');
legend(str1);
hold off

subplot(2,2,2)
hold on
x0 = [0 0 0 0];
for i = 0:0.01:0.1
    [~,x] = ode45(@f,t,x0);
    plot(t,x(:,2));
    grid on
    grid minor
    x0(2) = i;
end
xlabel('Время, c');
ylabel('Координата x2, м');
legend(str2);
hold off

subplot(2,2,3)
hold on
x0 = [0 0 0 0];
for i = 0:0.01:0.1
    [~,x] = ode45(@f,t,x0);
    plot(t,x(:,3));
    grid on
    grid minor
    x0(3) = i;
end
xlabel('Время, c');
ylabel('Скорость v1, м/c');
legend(str3);
hold off

subplot(2,2,4)
hold on
x0 = [0 0 0 0];
for i = 0:0.01:0.1
    [~,x] = ode45(@f,t,x0);
    plot(t,x(:,4));
    grid on
    grid minor
    x0(4) = i;
end
xlabel('Время, c');
ylabel('Скорость v2, м/c');
legend(str4);
hold off

figure()
hold on
x0 = [0 0 0 0];
for i = 0:0.01:0.1
    [~,x] = ode45(@f,t,x0);
    plot(x(:,1),x(:,3));
    grid on
    grid minor
    x0(3) = i;
end
ylabel('Скорость v1, м/c');
xlabel('Координата x1, м');
legend(str3);
hold off