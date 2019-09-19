% Start of code
clear
close all
% includes constant parameters
constants
% includes evalualuated constants
evaluatedconstants

num = [1 / Ke];
den = [tm*te tm 1];

%------ P starts
% assumed Kp = 13.25

Kp1 = 13.25;
numa1 = Kp1 * num;
dena1 = den;

% For the closed-loop transfer function, the following is obtained
% numac and denac used for the overall closed transfer function in this case
[numac1, denac1] = cloop(numa1, dena1);
%------ P ends

%------ PI Starts
%Trial and Error tuning parameter Kp and Ki
Kp2 = 13.25;
Ki2 = 1325.38;

% For the PI equation
numc2 = [Kp2 Ki2];
denc2 = [1 0];

% convule "num with numc" and "den with denc"
numa2 = conv(num, numc2);
dena2 = conv(den, denc2);

% For the closed-loop transfer function, the following is obtained
% numac and denac used for the overall closed transfer function in this case

[numac2, denac2] = cloop(numa2, dena2);
%------ PI ends

%------ PID Starts
% Trial and error parameter guessed with support of RH
Kp3 = 13.25; 	% Proportional gain
Ki3 = 1325.38;  % Integral gain
Kd3 = 0.07547;  % Derivative gain
% For the PID equation
numc3 = [Kd3 Kp3 Ki3];
denc3 = [1 0];

% convule "num with numc" and "den with denc"
numa3 = conv(num, numc3);
dena3 = conv(den, denc3);

% For the closed-loop transfer function, the following is obtained
% numac and denac used for the overall closed transfer function in this case

[numac3, denac3] = cloop(numa3, dena3);


% Plotting the new step-response
t = 0:0.00001:0.004;

%New G1 for overall closed loop transfer function
G1 = tf(numac1, denac1);

G2 = tf(numac2, denac2);

G3 = tf(numac3, denac3);

% Plots the Step Response diagram
figure;
hold on
step (G1, t);
hold on
step (G2, t);
hold on
step (G3, t);
legend('P','PI','PID');
title('Closed loop  PID Trial and Error step response for P, PI and PID combinations');
xlabel('Time, [s]')
ylabel('Voltage, [volts]')


% End of code