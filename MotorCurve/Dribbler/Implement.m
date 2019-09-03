clc
clear all
close all
%% 1 Reading Data
in = csvread('INPUT_DRIBBLER_30_08_19.csv');
M1 = csvread('M5_DRIBBLER_30_08_19.csv');
%M2 = csvread('M2_29_08_19.csv');
%M3 = csvread('M3_29_08_19.csv');
%M4 = csvread('M4_29_08_19.csv');

for i = 1:length(M1)
    value = M1(i) + M1(i+1) + M1(i+2) + M1(i+3) + M1(i+4);
    if value == 0
        idx = i;
        break
    end
end
    
%inRAW = csvread('INPUT_27_07_19.csv');
%M1_RAW = csvread('M1_27_07_19.csv');
%M2_RAW = csvread('M2_27_07_19.csv');
%M3_RAW = csvread('M3_27_07_19.csv');
%M4_RAW = csvread('M4_27_07_19.csv');

figure;
plot(in,M1, '.');
plot(M1, in, '.');
title('Motor 1 Curve - RAW');
ylabel('PWM');
xlabel('Rad/s');

%figure;
%plot(inRAW,M2_RAW, '.');
%title('Motor 2 Curve - RAW');
%ylabel('PWM');
%xlabel('Rad/s');
%figure;

%plot(inRAW,M3_RAW, '.');
%title('Motor 3 Curve - RAW');
%ylabel('PWM');
%xlabel('Rad/s');
%figure;

%plot(inRAW,M4_RAW, '.');
%title('Motor 4 Curve - RAW');
%ylabel('PWM');
%xlabel('Rad/s');

%% 2 Plots
fprintf('Plotting Data ...\n')
m = length(in) %Número de exemplos
figure;
%plot(in,M1);
plot(M1, in);
title('Motor 1 Curve - line');
ylabel('PWM');
xlabel('Rad/s');

figure;
%plot(in,M1,'.');
plot(M1,in,'.');
title('Motor 1 Curve - points');
ylabel('PWM');
xlabel('Rad/s');

%% Fitting

%fit1 = fit(in, M1, 'poly4')
fit1 = fit(M1, in, 'poly4')
%plot(fit1,in,M1,'.');
plot(fit1, M1, in, '.');
hold on

figure;
%plot(in,M1,'-','LineWidth',2);
plot(M1,in,'-','LineWidth',2);
title('Motor 1 Curve - line');
ylabel('PWM');
xlabel('Rad/s');
hold on
plot(fit1);
