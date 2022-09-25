figure;
%plot(in,M1,'-','LineWidth',2);
plot(input_neg,results1_neg,'.','lineWidth', 2)
title('Velocidade x PWM');
ylabel('Velocidade(rad/s)');
xlabel('PWM (%dutyCycle)');
hold on
plot(input_pos,results1_pos,'.','lineWidth', 2)
x1 = -97:1:-24;
x2 = -23:1:-3;
x3 = 5:1:26;
x4 = 27:1:100;


y1 = 1.727 * x1 + 7.159;
y2 = 2.113 * x2 + 7.085;
y3 = 2.072 * x3 - 11;
y4 = 1.688 * x4 - 9.702;
plot(x1,y1,'-ro', 'lineWidth', 2);
plot(x2,y2,'-m*', 'lineWidth', 2);
plot(x3,y3,'-ro', 'lineWidth', 2);
plot(x4,y4,'-m*', 'lineWidth', 2);
