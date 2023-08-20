clear all
close all

data_air_1500ms = csvread("data_air2_19_08_23.csv");
data_ground_1500ms = csvread("data_ground_19_08_23.csv");

t=0:0.002:60.135;
t=transpose(t);

M1_AIR_1500ms = data_air_1500ms(1:30068,2);
IN_AIR_1500ms = data_air_1500ms(1:30068,1);
M2_AIR_1500ms = data_air_1500ms(1:30068,3);
M3_AIR_1500ms = data_air_1500ms(1:30068,4);
M4_AIR_1500ms = data_air_1500ms(1:30068,5);

M1_GROUND_1500ms = data_ground_1500ms(1:30068,2);
IN_GROUND_1500ms = data_ground_1500ms(1:30068,1);
M2_GROUND_1500ms = data_ground_1500ms(1:30068,3);
M3_GROUND_1500ms = data_ground_1500ms(1:30068,4);
M4_GROUND_1500ms = data_ground_1500ms(1:30068,5);

for i=1:30068
    if abs(IN_AIR_1500ms(i,1)) < 8.7
        IN_AIR_1500ms(i,1) = 0;
    elseif IN_AIR_1500ms(i,1) > 0
        IN_AIR_1500ms(i,1) = ((IN_AIR_1500ms(i,1) - 8.7681)/0.1547);
    else 
        IN_AIR_1500ms(i,1) = ((IN_AIR_1500ms(i,1) - -8.8582)/0.1535);
    end

    if abs(IN_GROUND_1500ms(i,1)) < 8.7
        IN_GROUND_1500ms(i,1) = 0;
    elseif IN_GROUND_1500ms(i,1) > 0
        IN_GROUND_1500ms(i,1) = ((IN_GROUND_1500ms(i,1) - 8.7681)/0.1547);
    else 
        IN_GROUND_1500ms(i,1) = ((IN_GROUND_1500ms(i,1) - -8.8582)/0.1535);
    end
end

M1_A_1500ms = iddata(M1_AIR_1500ms, IN_AIR_1500ms, 0.002);
M1_A_1500ms.TimeUnit = 'seconds';
M1_A_1500ms.InputName = 'input';
M1_A_1500ms.InputUnit = 'Desired Speed (rad/s)';
M1_A_1500ms.OutputName = 'output';
M1_A_1500ms.OutputUnit = 'Current Speed (rad/s)';

M1_G_1500ms = iddata(M1_GROUND_1500ms, IN_GROUND_1500ms, 0.002);
M1_G_1500ms.TimeUnit = 'seconds';
M1_G_1500ms.InputName = 'input';
M1_G_1500ms.InputUnit = 'Desired Speed (rad/s)';
M1_G_1500ms.OutputName = 'output';
M1_G_1500ms.OutputUnit = 'Current Speed (rad/s)';

figure;
OPT_TIME = iddataPlotOptions('time');
OPT_TIME.Grid = 'on';
OPT_TIME.Title.String = 'Input-Output Data - AIR';
OPT_TIME.Title.FontSize = 12;
OPT_TIME.Title.FontWeight = 'bold';
plot(M1_A_1500ms,OPT_TIME);

figure;
OPT_TIME.Title.String = 'Input-Output Data - GROUND';
plot(M1_G_1500ms,OPT_TIME);
figure;

figure;
plot(t, M1_AIR_1500ms);
hold on
plot(t,IN_AIR_1500ms);

figure;
plot(t,M1_GROUND_1500ms);
hold on
plot(t,IN_GROUND_1500ms);