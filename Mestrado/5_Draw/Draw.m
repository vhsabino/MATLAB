clc
clear all
close all

%CIRCLE PI
data1 = csvread('CirclePI_R1m_08_01_2020.csv');
x_pi_r1m = data1(:,1);
y_pi_r1m = data1(:,2);
y_pi_r1m(891,1) = y_pi_r1m(890,1);
figure;
plot(x_pi_r1m,y_pi_r1m,'.','lineWidth',1);
title('Robot tracking PI with radius = 1m')
xlabel('x-axis (mm)');
ylabel('y-axis (mm)');

%CIRCLE MASTER 
data2 = csvread('CircleMaster_R1m_08_01_2020.csv');
x_master_r1m = data2(1:891,1);
y_master_r1m = data2(1:891,2);

hold on
plot(x_master_r1m,y_master_r1m,'.','lineWidth',1);
title('Robot tracking PI with radius = 1m')
xlabel('x-axis (mm)');
ylabel('y-axis (mm)');

th = 0:pi/445:2*pi;
xunit = 500 * cos(th) + 789.3;
xunit = xunit';
yunit = 500 * sin(th) + -461;
yunit = yunit';
plot(xunit, yunit, '--', 'lineWidth',1);

disp('Erro Circulo PI:')
errorCircle1 = -(trapz(xunit,yunit)/trapz(x_pi_r1m,y_pi_r1m))

disp('Erro Circulo Anterior:')
errorCircle2 = -(trapz(x_master_r1m,y_master_r1m)/trapz(xunit,yunit))
%SQUARE PI 
data3 = csvread('SquarePI_015_ms_08_01_2020.csv');
x_pi_015ms = data3(:,1);
y_pi_015ms = data3(:,2);

figure;
plot(x_pi_015ms,y_pi_015ms,'.','lineWidth',1);
title('Robot tracking PI square 1.5m x 1.5m')
xlabel('x-axis (mm)');
ylabel('y-axis (mm)');

%SQUARE MASTER 
data4 = csvread('SquareMaster_015_ms_08_01_2020.csv');
data4 = data4(1:1692,:);
x_master_015ms = data4(:,1);
y_master_015ms = data4(:,2);

hold on
plot(x_master_015ms,y_master_015ms,'.','lineWidth',1);
l1_x = (444:3.5461:1944);
l1_x = l1_x';

l2_y = (-1171:3.5461:329);
l2_y = l2_y';

l3_x = (1944:-3.5461:444);
l3_x = l3_x';

l4_y = (329:-3.5461:-1171);
l4_y = l4_y';

for i = 1:423
    l1_y(i,1) = -1171;
    l2_x(i,1) = 1944;
    l3_y(i,1) = 329;
    l4_x(i,1) = 444;
end

x_ideal = vertcat(l1_x, l2_x, l3_x, l4_x);
y_ideal = vertcat(l1_y, l2_y, l3_y, l4_y);
plot(x_ideal,y_ideal,'--','lineWidth',1);
%title('Robot tracking PI with radius = 1m')
%xlabel('x-axis (mm)');
%ylabel('y-axis (mm)');
errorSquare1 = (trapz(x_pi_015ms,y_pi_015ms)/trapz(x_ideal,y_ideal))
errorSquare2 = (trapz(x_master_015ms,y_master_015ms)/trapz(x_ideal,y_ideal))
%j = 1;
%x1(1,1) = x(1,1);
%y1(1,1) = y(1,1);
%for i = 1:(length(x)-1)
% if ((x(i+1,1)-x(i,1) ~= 0) || (y(i+1,1)-y(i,1) ~= 0))
%    j = j + 1; 
%    x1(j,1) = x(i+1,1);
%    y1(j,1) = y(i+1,1);
% end
%end




%hold on
%plot(x8,y8,'-','lineWidth',1);
%title('Robot tracking - Speed 0.5 m/s')
%xlabel('x-axis (mm)');
%ylabel('y-axis (mm)');
%plot(x5,y5,'-','lineWidth',1);
%title('Robot tracking - speed 1.0 m/s')
%xlabel('x-axis (mm)');
%ylabel('y-axis (mm)');
%plot(x4,y4,'-','lineWidth',1);
%title('Robot tracking - speed 2.0 m/s')
%xlabel('x-axis (mm)');
%ylabel('y-axis (mm)');



