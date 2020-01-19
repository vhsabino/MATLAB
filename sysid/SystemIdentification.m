clc
clear all
close all
%% Loading data
%Input with 300ms rise time assumed
data_300ms = csvread('DATA_GROUND_100_27_09_19.csv');
M1_300ms = data_300ms([1:33488],2);
IN_300ms = data_300ms([1:33488],1);
motor1_300ms = iddata(M1_300ms, IN_300ms, 0.002);
M2_300ms = data_300ms([1:33488],3);
motor2_300ms = iddata(M2_300ms, IN_300ms, 0.002);
M3_300ms = data_300ms([1:33488],4);
motor3_300ms = iddata(M3_300ms, IN_300ms, 0.002);
M4_300ms = data_300ms([1:33488],5);
motor4_300ms = iddata(M4_300ms, IN_300ms, 0.002);
% 300ms has 133488 samples ground
% 100ms has 46285 samples ground
motor1_300ms.TimeUnit = 'seconds';
motor1_300ms.InputName = 'input';
motor1_300ms.InputUnit = '%duty cycle';
motor1_300ms.OutputName = 'output';
motor1_300ms.OutputUnit = 'rad/s';
%plot(motor1_300ms)
motor2_300ms.TimeUnit = 'seconds';
motor2_300ms.InputName = 'input';
motor2_300ms.InputUnit = '%duty cycle';
motor2_300ms.OutputName = 'output';
motor2_300ms.OutputUnit = 'rad/s';
%plot(motor1_300ms)
motor3_300ms.TimeUnit = 'seconds';
motor3_300ms.InputName = 'input';
motor3_300ms.InputUnit = '%duty cycle';
motor3_300ms.OutputName = 'output';
motor3_300ms.OutputUnit = 'rad/s';
%plot(motor1_300ms)
motor4_300ms.TimeUnit = 'seconds';
motor4_300ms.InputName = 'input';
motor4_300ms.InputUnit = '%duty cycle';
motor4_300ms.OutputName = 'output';
motor4_300ms.OutputUnit = 'rad/s';
%plot(motor1_300ms)


%z1 = iddata(M1D, inD, 0.002);
%z2 = iddata(M1V, inV, 0.002);

figure;
OPT_TIME = iddataPlotOptions('time');
OPT_TIME.Grid = 'on';
OPT_TIME.Title.String = 'Input-Output Data - Motor 1';
OPT_TIME.Title.FontSize = 12;
OPT_TIME.Title.FontWeight = 'bold';
plot(motor1_300ms,OPT_TIME);
figure;
OPT_TIME.Title.String = 'Input-Output Data - Motor 2';
plot(motor2_300ms,OPT_TIME);
figure;
OPT_TIME.Title.String = 'Input-Output Data - Motor 3';
plot(motor3_300ms,OPT_TIME);
figure;
OPT_TIME.Title.String = 'Input-Output Data - Motor 4';
plot(motor4_300ms,OPT_TIME);