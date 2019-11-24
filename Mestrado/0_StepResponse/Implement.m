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
plot(t, M1);
in(1,1) = 0;
for i = 2:850
    in(i,1) = 20;
end