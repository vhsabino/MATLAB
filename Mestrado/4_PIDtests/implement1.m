clc
clear all
close all
data = csvread('DATA_AIR_PID2020_07_01_20.csv');

i = length(data);
l =  i - 1;
tlength = l / 500;
t = 0:0.002:tlength;
IN = data([1:i],1);
M1 = data([1:i],2);
M2 = data([1:i],3);
M3 = data([1:i],4);
M4 = data([1:i],5);

%% Motor 1
plot(t, IN);
hold on
grid on
plot(t, M1);
title('Motor 1 data')
xlabel('time (s)') 
ylabel('Speed (rad/s)') 
xlim([-0.5 33])
ylim([-65 65])
legend({'Desired','Measured'},'Location','northeast')
%% Motor 2
figure;
plot(t, IN);
hold on
grid on
plot(t, M2);
title('Motor 2 data')
xlabel('time (s)') 
ylabel('Speed (rad/s)') 
xlim([-0.5 33])
ylim([-65 65])
legend({'Desired','Measured'},'Location','northeast')
%% Motor 3
figure;
plot(t, IN);
hold on
grid on
plot(t, M3);
title('Motor 3 data')
xlabel('time (ms)') 
ylabel('Speed (rad/s)') 
xlim([-0.5 33])
ylim([-65 65])
legend({'Desired','Measured_AIR'},'Location','northeast')
%% Motor 4
figure;
plot(t, IN);
hold on
grid on
plot(t, M4);
title('Motor 4 data')
xlabel('time (s)') 
ylabel('Speed (rad/s)') 
xlim([-0.5 33])
ylim([-65 65])
legend({'Desired','Measured'},'Location','northeast')