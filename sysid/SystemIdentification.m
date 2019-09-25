clc
clear all
close all
%% Loading data
% Input
in1 = csvread('INPUT_1_28_07_19.csv');
in2 = csvread('INPUT_2_28_07_19.csv');
in3 = csvread('INPUT_3_28_07_19.csv');
in4 = csvread('INPUT_4_28_07_19.csv');
in = vertcat(in1,in2,in3,in4);
clearvars in1 in2 in3 in4
%Motor 1
M1_1 = csvread('M1_1_28_07_19.csv');
M1_2 = csvread('M1_2_28_07_19.csv');
M1_3 = csvread('M1_3_28_07_19.csv');
M1_4 = csvread('M1_4_28_07_19.csv');
M1 = vertcat(M1_1,M1_2,M1_3,M1_4);
clearvars M1_1 M1_2 M1_3 M1_4
%Motor 2
M2_1 = csvread('M2_1_28_07_19.csv');
M2_2 = csvread('M2_2_28_07_19.csv');
M2_3 = csvread('M2_3_28_07_19.csv');
M2_4 = csvread('M2_4_28_07_19.csv');
M2 = vertcat(M2_1,M2_2,M2_3,M2_4);
clearvars M2_1 M2_2 M2_3 M2_4
%Motor 3
M3_1 = csvread('M3_1_28_07_19.csv');
M3_2 = csvread('M3_2_28_07_19.csv');
M3_3 = csvread('M3_3_28_07_19.csv');
M3_4 = csvread('M3_4_28_07_19.csv');
M3 = vertcat(M3_1,M3_2,M3_3,M3_4);
clearvars M3_1 M3_2 M3_3 M3_4
%Motor 4
M4_1 = csvread('M4_1_28_07_19.csv');
M4_2 = csvread('M4_2_28_07_19.csv');
M4_3 = csvread('M4_3_28_07_19.csv');
M4_4 = csvread('M4_4_28_07_19.csv');
M4 = vertcat(M4_1,M4_2,M4_3,M4_4);
clearvars M4_1 M4_2 M4_3 M4_4
%Creating iddata
motor1 = iddata(M1,in,0.001);
motor2 = iddata(M2,in,0.001);
motor3 = iddata(M3,in,0.001);
motor4 = iddata(M4,in,0.001);

%% Theoretical model
%Theoretical parameters
num_t = 13.25;
den_t = [2.295e-6 9.92e-4 1];
%Continuous function
tf_continuous_t = tf(num_t,den_t);
%Discrete function
tf_discrete_t = c2d(tf_continuous_t,0.001,'zoh');
z = tf('z',0.001);
num_d = 0.06971;
den_d = [1 -1.3304 0.3717];
tf_discrete_exp = tf(num_d,den_d,0.001,'Variable','z^-1');