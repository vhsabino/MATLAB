clc
clear all
close all

%CIRCLE PI
data1 = csvread('CirclePI_R1m_08_01_2020.csv');
x_pi_015ms = data1(:,1);
y_pi_015ms = data1(:,2);
y_pi_015ms(891,1) = y_pi_015ms(890,1);

data2 = csvread('CircleMaster_R1m_08_01_2020.csv');
x_master_015ms = data2(1:891,1);
y_master_015ms = data2(1:891,2);

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
a1 = plot(xunit, yunit, '--', 'lineWidth',1); M1 = 'Desired';

%for i = 1:891
%    plot(x_pi_r1m(i,1),y_pi_r1m(i,1),'r.','lineWidth',10);
%    pause(0.05)
%end

hold on
grid on
a2 = plot(x_pi_015ms,y_pi_015ms,'r-','lineWidth',1.75); M2 = 'PI-tuning';
a3 = plot(x_master_015ms,y_master_015ms,'b-.','lineWidth',1.75); M3 = 'PD-empirical';
legend([a1;a2;a3], M1, M2, M3)

%0.25m/s

%CIRCLE PI 25 ms
data4 = csvread('CirclePI_25_ms_09_01_2020.csv');
x_pi_025ms = data4(:,1);
y_pi_025ms = data4(:,2);

data5 = csvread('CircleMaster_25_ms_09_01_2020.csv');
x_master_025ms = data5(:,1);
y_master_025ms = data5(:,2);

figure;
title('Robot tracking with vy = 0.25 m/s and w = -0.3864 rad/s')
xlabel('x-axis (mm)');
ylabel('y-axis (mm)');
axis([100 1400 -1100 100])
hold on

th = 0:pi/445:2*pi;
xunit = 500 * cos(th) + 789.3;
xunit = xunit';
yunit = 500 * sin(th) + -461;
yunit = yunit';
a1 = plot(xunit, yunit, '--', 'lineWidth',1); M1 = 'Desired';

hold on
grid on
a4 = plot(x_pi_025ms,y_pi_025ms,'r-','lineWidth',1.75); M4 = 'PI-tuning';
a5 = plot(x_master_025ms,y_master_025ms,'b-.','lineWidth',1.75); M5 = 'PD-empirical';
legend([a1;a2;a3], M1, M4, M5)

%CIRCLE PI 50ms
data6 = csvread('CirclePI_50_ms_09_01_2020.csv');
x_pi_050ms = data6(1:355,1);
y_pi_050ms = data6(1:355,2);

data7 = csvread('CircleMaster_50_ms_09_01_2020.csv');
x_master_050ms = data7(1:340,1);
y_master_050ms = data7(1:340,2);

figure;
title('Robot tracking with vy = 0.50 m/s and w = -0.7853 rad/s')
xlabel('x-axis (mm)');
ylabel('y-axis (mm)');
axis([100 1400 -1100 100])
hold on

th = 0:pi/445:2*pi;
xunit = 500 * cos(th) + 789.3;
xunit = xunit';
yunit = 500 * sin(th) + -461;
yunit = yunit';
a1 = plot(xunit, yunit, '--', 'lineWidth',1); M1 = 'Desired';

hold on
grid on
a6 = plot(x_master_050ms,y_master_050ms,'r-','lineWidth',1.75); M6 = 'PI-tuning';
a7 = plot(x_pi_050ms,y_pi_050ms,'b-.','lineWidth',1.75); M7 = 'PD-empirical';
legend([a1;a6;a7], M1, M6, M7)

%CIRCLE PI 75ms
data8 = csvread('CirclePI_75_ms_09_01_2020.csv');
x_pi_075ms = data8(1:290,1);
y_pi_075ms = data8(1:290,2);

data9 = csvread('CircleMaster_75_ms_09_01_2020.csv');
x_master_075ms = data9(1:270,1);
y_master_075ms = data9(1:270,2);

figure;
title('Robot tracking with vy = 0.75 m/s and w = -1.1717 rad/s')
xlabel('x-axis (mm)');
ylabel('y-axis (mm)');
axis([100 1400 -1100 100])
hold on

th = 0:pi/445:2*pi;
xunit = 500 * cos(th) + 789.3;
xunit = xunit';
yunit = 500 * sin(th) + -461;
yunit = yunit';
a1 = plot(xunit, yunit, '--', 'lineWidth',1); M1 = 'Desired';

hold on
grid on
a8 = plot(x_master_075ms,y_master_075ms,'r-','lineWidth',1.75); M8 = 'PI-tuning';
a9 = plot(x_pi_075ms,y_pi_075ms,'b-.','lineWidth',1.75); M9 = 'PD-empirical';
legend([a1;a8;a9], M1, M8, M9)

%CIRCLE PI 100ms
data10 = csvread('CirclePI_100_ms_09_01_2020.csv');
x_pi_100ms = data10(1:220,1);
y_pi_100ms = data10(1:220,2);

data11 = csvread('CircleMaster_100_ms_09_01_2020.csv');
x_master_100ms = data11(1:250,1);
y_master_100ms = data11(1:250,2);

figure;
title('Robot tracking PI with vy = 1.0 m/s and w = 1.5708 rad/s')
xlabel('x-axis (mm)');
ylabel('y-axis (mm)');
axis([100 1400 -1100 100])
hold on

th = 0:pi/445:2*pi;
xunit = 500 * cos(th) + 789.3;
xunit = xunit';
yunit = 500 * sin(th) + -461;
yunit = yunit';
a1 = plot(xunit, yunit, '--', 'lineWidth',1); M1 = 'Desired';

hold on
grid on
a10 = plot(x_master_100ms,y_master_100ms,'r-','lineWidth',1.75); M10 = 'PI-tuning';
a11 = plot(x_pi_100ms,y_pi_100ms,'b-.','lineWidth',1.75); M11 = 'PD-empirical';
legend([a1;a10;a11], M1, M10, M11)

%CIRCLE PI 30ms
data12 = csvread('CirclePI_30_ms_09_01_2020.csv');
x_pi_30ms = data12(:,1);
y_pi_30ms = data12(:,2);

data13 = csvread('CircleMaster_30_ms_09_01_2020.csv');
x_master_30ms = data13(:,1);
y_master_30ms = data13(:,2);

figure;
title('Robot tracking PI with vy = 0.3 m/s')
xlabel('x-axis (mm)');
ylabel('y-axis (mm)');
axis([100 1400 -1100 100])
hold on

th = 0:pi/445:2*pi;
xunit = 500 * cos(th) + 789.3;
xunit = xunit';
yunit = 500 * sin(th) + -461;
yunit = yunit';
a1 = plot(xunit, yunit, '--', 'lineWidth',1); M1 = 'Desired';

hold on
grid on
a12 = plot(x_pi_30ms,y_pi_30ms,'r-','lineWidth',1.75); M12 = 'PI-tuning';
a13 = plot(x_master_30ms,y_master_30ms,'b-.','lineWidth',1.75); M13 = 'PD-empirical';
legend([a1;a12;a13], M1, M12, M13)