clc
clear all
close all
%% Loading data
%Input with 300ms rise time assumed
data_300ms = csvread('DATA_GROUND_300_27_09_19.csv');
M1_300ms = data_300ms([1:46285],2);
IN_300ms = data_300ms([1:46285],1);
motor1_300ms = iddata(M1_300ms, IN_300ms, 0.002);
M2_300ms = data_300ms([1:46285],3);
motor2_300ms = iddata(M2_300ms, IN_300ms, 0.002);
M3_300ms = data_300ms([1:46285],4);
motor3_300ms = iddata(M3_300ms, IN_300ms, 0.002);
M4_300ms = data_300ms([1:46285],5);
motor4_300ms = iddata(M4_300ms, IN_300ms, 0.002);
% 300ms has 133488 samples ground
% 100ms has 46285 samples ground
motor1_300ms.TimeUnit = 'seconds';
motor1_300ms.InputName = 'input';
motor1_300ms.InputUnit = '%duty cycle';
motor1_300ms.OutputName = 'output';
motor1_300ms.OutputUnit = 'rad/s';
plot(motor1_300ms)