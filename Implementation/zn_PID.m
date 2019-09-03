clc
clear all
close all

%% Motor 1
%Continuous system
num2 = 1.508e06;
den2 = [1 522 1.09e04];
tf2 = tf(num2,den2);

% Ziegler-Nichols parameters
Kp = 494.4496; 	% Proportional gain
Ki = 617.981;	% Integral gain
Kd = 0.02437;	% Derivative gain


% For the PID equation
numc = [Kd Kp Ki];
denc = [1 0];

% convule 
numa = conv(num2, numc);
dena = conv(den2, denc);

% For the closed-loop transfer function, the following is obtained
% numac and denac used for the overall closed transfer function in this case

[numac, denac] = cloop(numa, dena);

% Plotting the new step-response

t = 0:0.0001:0.3;
step(numac, denac, t);
title('Closed loop step response for ZN-Kp, Ki and Kd');
xlabel('Time, [s]')
ylabel('Voltage, [volts]');
step(numac, denac, t);
title('Closed loop step response for ZN-Kp, Ki and Kd');
xlabel('Time, [s]')
ylabel('Voltage, [volts]')