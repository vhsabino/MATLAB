clear all
close all
% Define the Laplace Variable 's'
s = tf('s')
% Set the sample time to 2 seconds
T = 2;
% Set critical Frequency to 0.1 rad/s
W0 = 0.1;
% Set quality factor to 1
Q = 1;
% Create our s-domain notch filter
G1 = (s^2 + W0^2)/(s^2 + W0/Q*s + W0^2)
%Bode plot to check the magnitude
bode(G1)
%Let's use the bilinear transform (tustin) to convert to z-domain
G1t = c2d(G1, T, 'tustin')
bode(G1,G1t)
% This is good, but I got the requirements wrong!
W0new = 0.7;
G1new = (s^2 + W0new^2)/(s^2 + W0new/Q*s + W0new^2)
G1tnew = c2d(G1new,T,['Method','tustin','PrewarpFrequency',W0new])
figure;
bode(G1new,G1tnew)