clear all
close all
load("output-sim2.mat")
x_ref = out(13,:);
y_ref = -1*out(14,:);
figure;
plot(y_ref,x_ref,'-','lineWidth',1);
title('Robot tracking - X draw')
xlabel('x-axis (m)');
ylabel('y-axis (m)');