clc
clear all
close all
%% 1 Reading Data
in = csvread('R0_INPUT_NEG.csv');
M1 = csvread('R0_M1_NEG.csv');
a1 = -3.08e-6;
a2 = -0.0006537;
a3 = -0.04343;
a4 = 1.005;
a5 = 10.33;
in_conv = a1*in.^4 + a2*in.^3 + a3*in.^2 + a4*in + a5;