clc
clear all
close all

%CIRCLE PI
data1 = csvread('CirclePI_R1m_08_01_2020.csv');
x_pi_r1m = data1(:,1);
y_pi_r1m = data1(:,2);
y_pi_r1m(891,1) = y_pi_r1m(890,1);
figure;
title('Robot tracking PI with radius = 1m')
xlabel('x-axis (mm)');
ylabel('y-axis (mm)');
axis([100 1400 -1100 100])
hold on

th = 0:pi/445:2*pi;
xunit = 500 * cos(th) + 789.3;
xunit = xunit';
yunit = 500 * sin(th) + -461;
yunit = yunit';
plot(xunit, yunit, 'g--', 'lineWidth',1);

for i = 1:891
    plot(x_pi_r1m(i,1),y_pi_r1m(i,1),'r.','lineWidth',10);
    pause(0.05)
end

