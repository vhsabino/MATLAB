clear all
close all

data_x_500ms = csvread('data_x2.csv');
data_x3_500ms = csvread('data_x3.csv');
data_x4_500ms = csvread('data_x4.csv');
data_x5_500ms = csvread('data_x5.csv');
data_y_500ms = csvread('data_y2.csv');
data_y3_500ms = csvread('data_y3.csv');
data_y4_500ms = csvread('data_y4.csv');
data_w_500ms = csvread("data_w2.csv");
data_w2_500ms = csvread("data_w3.csv");
data_w3_500ms = csvread("data_w4.csv");

t=0:0.002:29.998;
t=transpose(t);

VX_500ms = data_x_500ms(1:15000,2);
IN_X_500ms = data_x_500ms(1:15000,1);
VX2_500ms = data_x3_500ms(1:15000,2);
IN_X2_500ms = data_x3_500ms(1:15000,1);
VX3_500ms = data_x4_500ms(1:15000,2);
IN_X3_500ms = data_x4_500ms(1:15000,1);
VX4_500ms = data_x5_500ms(1:15000,2);
IN_X4_500ms = data_x5_500ms(1:15000,1);

VY_500ms = data_y_500ms(1:15000,2);
IN_Y_500ms = data_y_500ms(1:15000,1);
VY2_500ms = data_y3_500ms(1:15000,2);
IN_Y2_500ms = data_y3_500ms(1:15000,1);
VY3_500ms = data_y4_500ms(1:15000,2);
IN_Y3_500ms = data_y4_500ms(1:15000,1);

W_500ms = data_w_500ms(1:15000,2);
IN_W_500ms = data_w_500ms(1:15000,1);
W2_500ms = data_w2_500ms(1:15000,2);
IN_W2_500ms = data_w2_500ms(1:15000,1);
W3_500ms = data_w3_500ms(1:15000,2);
IN_W_500ms = data_w_500ms(1:15000,1);

speedX_500ms = iddata(VX_500ms, IN_X_500ms, 0.002);
speedX_500ms.TimeUnit = 'seconds';
speedX_500ms.InputName = 'input';
speedX_500ms.InputUnit = 'Desired Speed (m/s)';
speedX_500ms.OutputName = 'output';
speedX_500ms.OutputUnit = 'Current Speed (m/s)';

VY_500ms = data_y_500ms(1:15000,2);
IN_Y_500ms = data_y_500ms(1:15000,1);
speedY_500ms = iddata(VY_500ms, IN_Y_500ms, 0.002);
speedY_500ms.TimeUnit = 'seconds';
speedY_500ms.InputName = 'input';
speedY_500ms.InputUnit = 'Desired Speed (m/s)';
speedY_500ms.OutputName = 'output';
speedY_500ms.OutputUnit = 'Current Speed (m/s)';

W_500ms = data_w_500ms(1:15000,2);
IN_W_500ms = data_w_500ms(1:15000,1);
speedW_500ms = iddata(W_500ms, IN_W_500ms, 0.002);
speedW_500ms.TimeUnit = 'seconds';
speedW_500ms.InputName = 'input';
speedW_500ms.InputUnit = 'Desired Speed (rad/s)';
speedW_500ms.OutputName = 'output';
speedW_500ms.OutputUnit = 'Current Speed (rad/s)';

figure;
OPT_TIME = iddataPlotOptions('time');
OPT_TIME.Grid = 'on';
OPT_TIME.Title.String = 'Input-Output Data - VX';
OPT_TIME.Title.FontSize = 12;
OPT_TIME.Title.FontWeight = 'bold';
plot(speedX_500ms,OPT_TIME);
figure;
OPT_TIME.Title.String = 'Input-Output Data - VY';
plot(speedY_500ms,OPT_TIME);
figure;
OPT_TIME.Title.String = 'Input-Output Data - W';
plot(speedW_500ms,OPT_TIME);

%figure;
%plot(t, VX_500ms);
%hold on
%plot(t,IN_X_500ms);
figure;
plot(t,VX2_500ms);
hold on
plot(t,IN_X2_500ms);
plot(t,VX3_500ms);
plot(t,VX4_500ms);

%figure;
%plot(t, VY_500ms);
%hold on
%plot(t,IN_Y_500ms);
figure;
plot(t, VY2_500ms);
hold on
plot(t,IN_Y2_500ms);
plot(t,VY3_500ms);
figure;
%plot(t, W_500ms);
%hold on
plot(t,IN_W2_500ms);
hold on
plot(t,W2_500ms);
plot(t,W3_500ms);