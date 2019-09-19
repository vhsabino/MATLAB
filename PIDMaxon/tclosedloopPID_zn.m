% Start of code
clear
close all
% includes constant parameters
constants
% includes evalualuated constants
evaluatedconstants

num = [1 / Ke];
den = [tm*te tm 1];

% Ziegler-Nichols parameters
Kp = 7.76184; 	% Proportional gain
Ki = 617.981;	% Integral gain
Kd = 0.02437;	% Derivative gain

% For the PID equation
numc = [Kd Kp Ki];
denc = [1 0];

% convule 
numa = conv(num, numc);
dena = conv(den, denc);

% For the closed-loop transfer function, the following is obtained
% numac and denac used for the overall closed transfer function in this case

[numac, denac] = cloop(numa, dena);

% Plotting the new step-response

t = 0:0.00001:0.3;
step(numac, denac, t);
title('Closed loop step response for ZN-Kp, Ki and Kd');
xlabel('Time, [s]')
ylabel('Voltage, [volts]')

G1 = tf(num,den);

% Plots the Root-locus

figure;
rlocus(G1);
title('Closed-loop Root Locus diagram');
grid on;
% plots the Nyquist diagram
figure;
nyquist(G1);
title('Closed-loop Nyquist diagram');
grid on;
% plots the Bode Plot
figure;
bode(G1,{0.1, 100})
title('Closed loop Bode plot diagram with wider frequency spacing');
grid on;
%% End of code
