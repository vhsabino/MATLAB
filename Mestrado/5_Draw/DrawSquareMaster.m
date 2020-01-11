clc
clear all
close all

%SQUARE PI
data4 = csvread('SquareMaster_015_ms_08_01_2020.csv');
data4 = data4(1:1692,:);
x_master_015ms = data4(:,1);
y_master_015ms = data4(:,2);
figure;
title('Robot tracking Master with 1,5m square')
xlabel('x-axis (mm)');
ylabel('y-axis (mm)');
axis([275 2000 -1250 500])
hold on

l1_x = (444:3.5461:1944);
l1_x = l1_x';

l2_y = (-1171:3.5461:329);
l2_y = l2_y';

l3_x = (1944:-3.5461:444);
l3_x = l3_x';

l4_y = (329:-3.5461:-1171);
l4_y = l4_y';

for i = 1:423
    l1_y(i,1) = -1171;
    l2_x(i,1) = 1944;
    l3_y(i,1) = 329;
    l4_x(i,1) = 444;
end

x_ideal = vertcat(l1_x, l2_x, l3_x, l4_x);
y_ideal = vertcat(l1_y, l2_y, l3_y, l4_y);
plot(x_ideal,y_ideal,'--','lineWidth',1);;

for i = 1:1692
    plot(x_master_015ms(i,1),y_master_015ms(i,1),'r.','lineWidth',10);
    pause(0.05)
end

data4 = csvread('SquareMaster_015_ms_08_01_2020.csv');
data4 = data4(1:1692,:);
x_master_015ms = data4(:,1);
y_master_015ms = data4(:,2);