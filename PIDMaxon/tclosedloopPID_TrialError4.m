% Start of code
clear
close all
% includes constant parameters
constants
% includes evalualuated constants
evaluatedconstants

num = [1 / Ke];
den = [tm*te tm 1];

%Ziegler-Nichols parameter computed
Kp = 13.25;			% Proportional gain
Ki = 0;				% Integral gain
Kd = 0;				% Derivative gain

numc = [Kd Kp Ki];
denc = [1 0];

% convule "num with numc" and "den with denc"
numa = conv(num, numc);
dena = conv(den, denc);

% For the closed-loop transfer function, the following is obtained
% numac and denac used for the overall closed transfer function in this case

[numac, denac] = cloop(numa, dena);
%
t = 0:0.00001:0.5;
step = (numac,denac,t);
title('Closed loop step response for ZN - Kp, Ki, and Kd');
xlabel('Time, [s]')
ylabel('Voltage, [volts]')

%New G1 for overall closed loop transfer function
G1 = tf(numac, denac);
% End of code