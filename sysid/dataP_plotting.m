clear all
close all
dataP = csvread('DATA_AIR_1ms_08_10_19.csv');
t = 0:0.002:15.203;
IN = dataP([401:8002],1);
M1 = dataP([401:8002],2);
M2 = dataP([401:8002],3);
M3 = dataP([401:8002],4);
M4 = dataP([401:8002],5);

dataP2 = csvread('DATA_GROUND_1ms_08_10_19.csv');
%t = 0:0.002:16.003;
IN_2 = dataP2([1:7602],1);
M1_2 = dataP2([1:7602],2);
M2_2 = dataP2([1:7602],3);
M3_2 = dataP2([1:7602],4);
M4_2 = dataP2([1:7602],5);

dataP3 = csvread('DATA_AIR_Master_1ms_08_10_19.csv');
%t = 0:0.002:15.203;
IN_3 = dataP3([401:8002],1);
M1_3 = dataP3([401:8002],2);
M2_3 = dataP3([401:8002],3);
M3_3 = dataP3([401:8002],4);
M4_3 = dataP3([401:8002],5);

dataP4 = csvread('DATA_GROUND_Master_1ms_08_10_19.csv');
%t = 0:0.002:16.003;
IN_4 = dataP4([401:8002],1);
M1_4 = dataP4([401:8002],2);
M2_4 = dataP4([401:8002],3);
M3_4 = dataP4([401:8002],4);
M4_4 = dataP4([401:8002],5);
figure;
%% Motor 1
plot(t, IN);
hold on
plot(t, M1);
plot(t, M1_2);
title('Motor 1 data')
xlabel('time (s)') 
ylabel('Speed (rad/s)') 
xlim([-0.5 16.5])
ylim([-65 65])
legend({'Desired','Measured', 'Measured GROUND'},'Location','northeast')
%% Motor 2
figure;
plot(t, IN);
hold on
plot(t, M2);
plot(t, M2_2);
title('Motor 2 data')
xlabel('time (s)') 
ylabel('Speed (rad/s)') 
xlim([-0.5 16.5])
ylim([-65 65])
legend({'Desired','Measured', 'Measured GROUND'},'Location','northeast')
%% Motor 3
figure;
plot(t, IN);
hold on
plot(t, M3);
plot(t, M3_2);
title('Motor 3 data')
xlabel('time (ms)') 
ylabel('Speed (rad/s)') 
xlim([-0.5 16.5])
ylim([-65 65])
legend({'Desired','Measured_AIR', 'Measured_GROUND'},'Location','northeast')
%% Motor 4
figure;
plot(t, IN);
hold on
plot(t, M4);
plot(t, M4_2);
title('Motor 4 data')
xlabel('time (s)') 
ylabel('Speed (rad/s)') 
xlim([-0.5 16.5])
ylim([-65 65])
legend({'Desired','Measured', 'Measured_GROUND'},'Location','northeast')

figure;
%% Motor 1
plot(t, IN);
hold on
plot(t, M1_3);
plot(t, M1_4);
title('Motor 1 data')
xlabel('time (s)') 
ylabel('Speed (rad/s)') 
xlim([-0.5 16.5])
ylim([-65 65])
legend({'Desired','Measured', 'Measured GROUND'},'Location','northeast')
%% Motor 2
figure;
plot(t, IN);
hold on
plot(t, M2_3);
plot(t, M2_4);
title('Motor 2 data')
xlabel('time (s)') 
ylabel('Speed (rad/s)') 
xlim([-0.5 16.5])
ylim([-65 65])
legend({'Desired','Measured', 'Measured GROUND'},'Location','northeast')
%% Motor 3
figure;
plot(t, IN);
hold on
plot(t, M3_3);
plot(t, M3_4);
title('Motor 3 data')
xlabel('time (ms)') 
ylabel('Speed (rad/s)') 
xlim([-0.5 16.5])
ylim([-65 65])
legend({'Desired','Measured_AIR', 'Measured_GROUND'},'Location','northeast')
%% Motor 4
figure;
plot(t, IN);
hold on
plot(t, M4_3);
plot(t, M4_4);
title('Motor 4 data')
xlabel('time (s)') 
ylabel('Speed (rad/s)') 
xlim([-0.5 16.5])
ylim([-65 65])
legend({'Desired','Measured', 'Measured_GROUND'},'Location','northeast')

figure;
%% Motor 1
plot(t, IN);
hold on
plot(t, M1_2);
plot(t, M1_4);
title('Motor 1 data')
xlabel('time (s)') 
ylabel('Speed (rad/s)') 
xlim([-0.5 16.5])
ylim([-65 65])
legend({'Desired','PI Controller', 'Master'},'Location','northeast')
%% Motor 2
figure;
plot(t, IN);
hold on
plot(t, M2_2);
plot(t, M2_4);
title('Motor 2 data')
xlabel('time (s)') 
ylabel('Speed (rad/s)') 
xlim([-0.5 16.5])
ylim([-65 65])
legend({'Desired','PI Controller', 'Master'},'Location','northeast')
%% Motor 3
figure;
plot(t, IN);
hold on
plot(t, M3_2);
plot(t, M3_4);
title('Motor 3 data')
xlabel('time (ms)') 
ylabel('Speed (rad/s)') 
xlim([-0.5 16.5])
ylim([-65 65])
legend({'Desired','PI Controller', 'Master'},'Location','northeast')
%% Motor 4
figure;
plot(t, IN);
hold on
plot(t, M4_2);
plot(t, M4_4);
title('Motor 4 data')
xlabel('time (s)') 
ylabel('Speed (rad/s)') 
xlim([-0.5 16.5])
ylim([-65 65])
legend({'Desired','PI Controller', 'Master'},'Location','northeast')
%{
dataP2 = csvread('DATA_GROUND_1ms_08_10_19.csv');
%t = 0:0.002:16.003;
IN_2 = dataP2([1:8002],1);
M1_2 = dataP2([1:8002],2);
M2_2 = dataP2([1:8002],3);
M3_2 = dataP2([1:8002],4);
M4_2 = dataP2([1:8002],5);
figure;
%% Motor 1
plot(t, IN_2);
hold on
plot(t, M1_2);
title('Motor 1  GROUND data')
xlabel('time (ms)') 
ylabel('Speed (rad/s)') 
xlim([-100 100])
ylim([-65 65])
legend({'Desired','Measured'},'Location','northeast')
%% Motor 2
figure;
plot(t, IN_2);
hold on
plot(t, M2_2);
title('Motor 2  GROUND data')
xlabel('time (ms)') 
ylabel('Speed (rad/s)') 
xlim([-0.1 20])
ylim([-21 21])
legend({'Desired','Measured'},'Location','northeast')
%% Motor 3
figure;
plot(t, IN_2);
hold on
plot(t, M3_2);
title('Motor 3  GROUND data')
xlabel('time (ms)') 
ylabel('Speed (rad/s)') 
xlim([-0.1 20])
ylim([-21 21])
legend({'Desired','Measured'},'Location','northeast')
%% Motor 4
figure;
plot(t, IN_2);
hold on
plot(t, M4_2);
title('Motor 4 GROUND data')
xlabel('time (ms)') 
ylabel('Speed (rad/s)') 
xlim([-0.1 20])
ylim([-21 21])
legend({'Desired','Measured'},'Location','northeast')
%}
