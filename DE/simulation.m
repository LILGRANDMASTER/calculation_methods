close all
clear all
clc
global InputStruct;
InputStruct.k1 = 10;
InputStruct.k2 = 15;
InputStruct.m1 = 2;
InputStruct.m2 = 9;
InputStruct.b1 = 2;

t = 0:0.1:100;

[~,x1] = ode45(@f,t,[0 0 0 0]);
figure, plot(t,x1(:,1));

[~,x2] = Euler(@f,t,[0 0 0 0]);
figure, plot(t,x2(:,1));

[~,x3] = avg_point(@f,t,[0 0 0 0]);

[~,x4] = EK(@f,t,[0 0 0 0]);
[~,x5] = runge_kutt(@f,t,[0 0 0 0]);

figure,plot(t,x1(:,1),t,x5(:,1));
legend('ode','Euler','avg','ek','runge');


