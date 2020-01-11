clc
clear all
close all

%CIRCLE Master
data2 = csvread('CircleMaster_R1m_08_01_2020.csv');
x_master_r1m = data2(1:891,1);
y_master_r1m = data2(1:891,2);
figure;
title('Robot tracking Master with radius = 1m')
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
    plot(x_master_r1m(i,1),y_master_r1m(i,1),'r.','lineWidth',10);
    pause(0.05)
end