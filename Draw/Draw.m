clc
%clear all
close all
figure;
plot(x,y,'-','lineWidth',1);
title('Robot tracking - Speed 0.15 m/s')
xlabel('x-axis (mm)');
ylabel('y-axis (mm)');
hold on
plot(x8,y8,'-','lineWidth',1);
title('Robot tracking - Speed 0.5 m/s')
xlabel('x-axis (mm)');
ylabel('y-axis (mm)');
plot(x5,y5,'-','lineWidth',1);
title('Robot tracking - speed 1.0 m/s')
xlabel('x-axis (mm)');
ylabel('y-axis (mm)');
plot(x4,y4,'-','lineWidth',1);
title('Robot tracking - speed 2.0 m/s')
xlabel('x-axis (mm)');
ylabel('y-axis (mm)');



