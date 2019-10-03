clear all
close all
dataP = csvread('DATA_AIR2_1ms_01_10_19.csv');
t = 0:0.001:19.360;
M1 = dataP([1:19361],1);
IN = dataP([1:19361],2);
M2 = dataP([1:19361],3);
M3 = dataP([1:19361],4);
M4 = dataP([1:19361],5);
figure;
%% Motor 1
plot(t, IN);
hold on
plot(t, M1);
title('Motor 1 data')
xlabel('time (ms)') 
ylabel('Speed (rad/s)') 
xlim([-0.1 20])
ylim([-21 21])
legend({'Desired','Measured'},'Location','northeast')
%% Motor 2
figure;
plot(t, IN);
hold on
plot(t, M2);
title('Motor 2 data')
xlabel('time (ms)') 
ylabel('Speed (rad/s)') 
xlim([-0.1 20])
ylim([-21 21])
legend({'Desired','Measured'},'Location','northeast')
%% Motor 3
figure;
plot(t, IN);
hold on
plot(t, M3);
title('Motor 3 data')
xlabel('time (ms)') 
ylabel('Speed (rad/s)') 
xlim([-0.1 20])
ylim([-21 21])
legend({'Desired','Measured'},'Location','northeast')
%% Motor 4
figure;
plot(t, IN);
hold on
plot(t, M4);
title('Motor 4 data')
xlabel('time (ms)') 
ylabel('Speed (rad/s)') 
xlim([-0.1 20])
ylim([-21 21])
legend({'Desired','Measured'},'Location','northeast')
