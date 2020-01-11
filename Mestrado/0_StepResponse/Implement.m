clc
%clear all
close all
%% MOTOR 1
%Leitura de dados motor 1 Suspenso
data = csvread('STEP_20_MOTOR_DIR_21_11_2019.csv');
%M1 = csvread('M1_SUSPENSO_RPM');
M1 = data(:,1);
M2 = data(:,2);
M3 = data(:,3);
M4 = data(:,4);
t = (0:0.002:1.698);
figure;
stairs(t, M4, '-', 'LineWidth', 1);
xlim([0 0.15]);
ylim([-1 24]);
%xticks(0:0.01:0.15);
%yticks(-1:1:24);
grid on
grid minor
title('Resposta Degrau - Motor 4')
xlabel('tempo (s)')
ylabel('velocidade (rad/s)')
in(1,1) = 0;
for i = 1:850
    in(i,1) = 20.502; %*.9
    in(i,2) = 2.278; %*.1
    in(i,3) = 22.78;
    in(i,4) = 23.6912; %*1.04
    in(i,5) = 21.8688; %*0.96
end
hold on
plot(t,in(:,1),'--');
plot(t,in(:,2),'r--');
plot(t,in(:,3),'r--');
plot(t,in(:,4),'r-.');
plot(t,in(:,5),'r-.');