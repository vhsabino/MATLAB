clc
clear all
close all
P = 4095;
nu = 1;
T = 0.05;
N = [P nu T];
band = [0 1];
range = [15 35];
u1 = idinput([4095,1,1],'PRBS',band,range);
t = 0:T:(P-1)*T;
plot(t,u1)
hold on
%plot(u1)
title('Periodic Signal')