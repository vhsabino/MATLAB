%
% Start of code
%
% include constant parameters
constants
% include evaluated constants
evaluatedconstants

% Transfer function
G = tf([1 / Ke], [tm * te tm 1])

% Plots the Step Response diagram
figure;
step(G, 0.5);
title('Open Loop Step Response diagram');
xlabel('Time, secs')
ylabel('Voltage, volts')
grid on;

% plots the Root-locus
figure;
rlocus(G);
title('Open Loop Root Locus diagram');
grid on;

% plots the Nyquist diagram
figure;
nyquist(G);
title('Open Loop Nyquist diagram');
grid on;

% plots the Bode Plots
figure;
bode(G);
title('Open Loop Bode plot diagram 1');
grid on;

% plots the Bode Plots
figure;
bode(G, {0.1, 100})
title('Open Loop Bode plot diagram with wider frequency spacing');
grid on;

% plots the Bode Plots
figure;
GD = c2d(G, 0.5);
bode(G, 'r', GD, 'b--')
title('Open Loop Bode plot diagram with discretisied response');
grid on;
% End of code