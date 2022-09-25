clear all
close all
data = csvread('vss-24-09-2022.csv');

i = length(data);
l =  i - 1;
tlength = l / 500;
t = 0:0.002:tlength;
IN = data([1:i],1);
M1 = data([1:i],2);
M2 = data([1:i],3);

%% Motor 1
plot(t, IN);
hold on
grid on
plot(t, M1);
title('Motor 1 data')
xlabel('time (s)') 
ylabel('Speed (rad/s)') 
xlim([-0.5 17])
ylim([-160 160])
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
xlim([-0.5 17])
ylim([-160 160])
legend({'Desired','Measured'},'Location','northeast')

%% Id data
motor1_300ms = iddata(M1, IN, 0.002);
motor2_300ms = iddata(M2, IN, 0.002);

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