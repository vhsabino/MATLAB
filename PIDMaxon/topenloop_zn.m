% Start of code
clear
close all
% includes constant parameters
constants
% includes evalualuated constants
evaluatedconstants

num = [1 / Ke];
den = [tm*te tm 1];

% Transfer funtion

G = tf(num,den);

% Plots the set response diagram

figure;

step(G, 0.5);

title('Open Loop Step Response diagram');
xlabel('Time, secs')
ylabel('Voltage, volts')

format long
load openloop.mat
coeff_x = polyfit([6 10 12], openloop(2,[6 10 12]), 1)
coeff_y = polyfit([700:900], openloop(2,[700:900]), 1)

for n=1:100
	zn_line_x(n) = coeff_x(1) * n + coeff_x(2);
end

for n=1:900
	zn_line_y(n) = coeff_y(1) * n + coeff_y(2);
end

figure(2)
hold on
plot(openloop(2,:),'red')
plot(zn_line_x);
plot((zn_line_y),'green');
legend('step response', 'line');
grid on
axis([0 400 0 14]);
l = length(openloop(2,:))
L_samples = roots(coeff_x)

[a,b,c]= intersect(zn_line_x,zn_line_y)

% End of code