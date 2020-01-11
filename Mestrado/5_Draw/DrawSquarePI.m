clc
clear all
close all

%SQUARE PI 0.15m/s
data3 = csvread('SquarePI2_015_ms_08_01_2020.csv');
x_pi_015ms = data3(:,1);
y_pi_015ms = data3(:,2);
data4 = csvread('SquareMaster_015_ms_08_01_2020.csv');
data4 = data4(1:1692,:);
x_master_015ms = data4(:,1);
y_master_015ms = data4(:,2);
figure;
title('Robot tracking PI with 0.15 m/s')
xlabel('x-axis (mm)');
ylabel('y-axis (mm)');
axis([275 2000 -1250 500])
hold on

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

a1 = plot(x_ideal,y_ideal,'--','lineWidth',1); M1 = 'Desired';
hold on
grid on
a2 = plot(x_pi_015ms,y_pi_015ms,'r-','lineWidth',1.75); M2 = 'New model';
a3 = plot(x_master_015ms,y_master_015ms,'b-.','lineWidth',1.75); M3 = 'Previous model';
legend([a1;a2;a3], M1, M2, M3)
%for i = 1:1556
%    plot(x_pi_015ms(i,1),y_pi_015ms(i,1),'r.','lineWidth',10);
%    pause(0.05)
%end

%SQUARE PI 0.5 m/s
data5 = csvread('SquarePI_050_ms_09_01_2020.csv');
x_pi_050ms = data5(:,1);
y_pi_050ms = data5(:,2);
data6 = csvread('SquareMaster_050_ms_09_01_2020.csv');
x_master_050ms = data6(:,1);
y_master_050ms = data6(:,2);
figure;
title('Robot tracking PI with 0.50 m/s')
xlabel('x-axis (mm)');
ylabel('y-axis (mm)');
axis([275 2000 -1250 500])
a1 = plot(x_ideal,y_ideal,'--','lineWidth',1); M1 = 'Desired';
grid on
hold on
a4 = plot(x_pi_050ms,y_pi_050ms,'r-','lineWidth',1.75); M4 = 'New model';
a5 = plot(x_master_050ms,y_master_050ms,'b-.','lineWidth',1.75); M5 = 'Previous model';
title('Robot tracking PI with 0.50 m/s')
xlabel('x-axis (mm)');
ylabel('y-axis (mm)');
legend([a1;a4;a5], M1, M4, M5)

%SQUARE PI 0.75 m/s
data6 = csvread('SquarePI_075_ms_09_01_2020.csv');
x_pi_075ms = data6(:,1);
y_pi_075ms = data6(:,2);
data7 = csvread('SquareMaster_075_ms_09_01_2020.csv');
x_master_075ms = data7(:,1);
y_master_075ms = data7(:,2);
figure;
title('Robot tracking PI with 0.75 m/s')
xlabel('x-axis (mm)');
ylabel('y-axis (mm)');
axis([275 2000 -1250 500])
a1 = plot(x_ideal,y_ideal,'--','lineWidth',1); M1 = 'Desired';
grid on
hold on
a6 = plot(x_pi_075ms,y_pi_075ms,'r-','lineWidth',1.75); M6 = 'New model';
a7 = plot(x_master_075ms,y_master_075ms,'b-.','lineWidth',1.75); M7 = 'Previous model';
title('Robot tracking PI with 0.75 m/s')
xlabel('x-axis (mm)');
ylabel('y-axis (mm)');
legend([a1;a4;a5], M1, M6, M7)

%SQUARE PI 1.0 m/s
data8 = csvread('SquarePI_100_ms_09_01_2020.csv');
x_pi_100ms = data8(:,1);
y_pi_100ms = data8(:,2);
data9 = csvread('SquareMaster_100_ms_09_01_2020.csv');
x_master_100ms = data9(:,1);
y_master_100ms = data9(:,2);
figure;
title('Robot tracking PI with 1.0 m/s')
xlabel('x-axis (mm)');
ylabel('y-axis (mm)');
axis([275 2000 -1250 500])
a1 = plot(x_ideal,y_ideal,'--','lineWidth',1); M1 = 'Desired';
grid on
hold on
a9 = plot(x_pi_100ms,y_pi_100ms,'r-','lineWidth',1.75); M8 = 'New model';
a8 = plot(x_master_100ms,y_master_100ms,'b-.','lineWidth',1.75); M9 = 'Previous model';
title('Robot tracking PI with 1.0 m/s')
xlabel('x-axis (mm)');
ylabel('y-axis (mm)');
legend([a1;a8;a9], M1, M8, M9)

%SQUARE PI 1.0 m/s
data10 = csvread('SquarePI_150_ms_09_01_2020.csv');
x_pi_150ms = data10(:,1);
y_pi_150ms = data10(:,2);
data11 = csvread('SquareMaster_150_ms_09_01_2020.csv');
x_master_150ms = data11(:,1);
y_master_150ms = data11(:,2);
figure;
title('Robot tracking PI with 1.5 m/s')
xlabel('x-axis (mm)');
ylabel('y-axis (mm)');
axis([275 2000 -1250 500])
a1 = plot(x_ideal,y_ideal,'--','lineWidth',1); M1 = 'Desired';
grid on
hold on
a10 = plot(x_pi_150ms,y_pi_150ms,'r-','lineWidth',1.75); M10 = 'New model';
a11 = plot(x_master_150ms,y_master_150ms,'b-.','lineWidth',1.75); M11 = 'Previous model';
title('Robot tracking PI with 1.5 m/s')
xlabel('x-axis (mm)');
ylabel('y-axis (mm)');
legend([a1;a10;a11], M1, M10, M11)