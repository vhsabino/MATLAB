%Função de Transferência motor 1 ground
num2 = 1.508e06;
den2 = [1 522 1.09e04];
tf2 = tf(num2,den2)


% Plots the Step Response diagram
figure;
step(tf2, 0.3);
title('Open Loop Step Response diagram');
xlabel('Time, secs')
ylabel('Voltage, volts')
grid on;
hold on

format long
load openloop.mat
coeff_x = polyfit([6 10 12], openloop(2,[6 10 12]), 1)
coeff_y = polyfit([10:28], openloop(2,[10:28]), 0.3)

for n=1:10
	zn_line_x(n) = coeff_x(1) * n + coeff_x(2);
end

for n=1:30
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