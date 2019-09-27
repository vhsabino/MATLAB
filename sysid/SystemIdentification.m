clc
clear all
close all
%% Loading data
% Input
data = csvread('DATA_GROUND_02_27_09_19.csv');
M1 = data([1:46198],2);
IN = data([1:46198],1);
motor1 = iddata(M1, IN, 0.005);