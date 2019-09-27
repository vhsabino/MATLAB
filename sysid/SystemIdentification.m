clc
clear all
close all
%% Loading data
% Input with 300ms rise time assumed
data_300ms = csvread('DATA_GROUND_300_27_09_19.csv');
M1_300ms = data_300ms([1:133488],2);
IN_300ms = data_300ms([1:133488],1);
motor1_300ms = iddata(M1_300ms, IN_300ms, 0.005);
% 300ms has 133488 samples ground
% 100ms has 46285 samples ground
data_100ms = csvread('DATA_GROUND_100_27_09_19.csv');
M1_100ms = data_100ms([1:46285],2);
IN_100ms = data_100ms([1:46285],1);
motor1_100ms = iddata(M1_100ms, IN_100ms, 0.005);