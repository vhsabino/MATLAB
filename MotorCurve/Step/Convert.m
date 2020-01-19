clc
clear all
close all

%% Motor Parameters

ppr = 1024; % Pulses per Revolution
Ts = 0.001; % Sampling time
n_samples = 10000; % Number of samples to read
in_dataType = 1;  % 0 = Volts; 1 = PWM; 2 = custom range;
out_dataType = 1; % 0 = pulses; 1 = rad/s; 2 = rpm; 3 = rps;


%% 1 Reading Data
in1 = csvread('INPUT_1_28_07_19.csv');
i = 1;
j = 1;
while (i < numel(in1))
    in1_1(j,1) = in1(i,1);
    i = i + 2;
    j = j + 1;
end
in2 = csvread('INPUT_2_28_07_19.csv'); 
i = 1;
j = 1;
while (i < numel(in2))
    in2_2(j,1) = in2(i,1);
    i = i + 2;
    j = j + 1;
end
in3 = csvread('INPUT_3_28_07_19.csv');
i = 1;
j = 1;
while (i < numel(in3))
    in3_3(j,1) = in3(i,1);
    i = i + 2;
    j = j + 1;
end
in4 = csvread('INPUT_4_28_07_19.csv');
i = 1;
j = 1;
while (i < numel(in4))
    in4_4(j,1) = in4(i,1);
    i = i + 2;
    j = j + 1;
end
%in = vertcat(in1, in2, in3, in4);
inD = in1_1;
inV= vertcat(in2_2, in3_3, in4_4);
%in2 = zeros(120000, 1, 'double');
%{
a1_neg = -3.08e-6;
a2_neg = -0.0006537;
a3_neg = -0.04343;
a4_neg = 1.005;
a5_neg = 10.33;

a1_pos = 2.92e-6;
a2_pos = -0.0006261;
a3_pos = 0.04206;
a4_pos = 1.063;
a5_pos = -10.73;

for i = 1 : length(in)
    if in(i,1) < -8.5
        in2(i,1) = a1_neg*in(i,1)^4 + a2_neg*in(i,1)^3 + a3_neg*in(i,1)^2 + a4_neg*in(i,1) + a5_neg;
    elseif in(i,1) > 8.5
        in2(i,1) = a1_pos*in(i,1)^4 + a2_pos*in(i,1)^3 + a3_pos*in(i,1)^2 + a4_pos*in(i,1) + a5_pos;
    else
        in2(i,1) = 0;
    end
end

%in_conv = a1*in.^4 + a2*in.^3 + a3*in.^2 + a4*in + a5;
%}
M1_1 = csvread('M4_1_28_07_19.csv');
i = 1;
j = 1;
while (i < numel(M1_1))
    M1_1_1(j,1) = M1_1(i,1);
    i = i + 2;
    j = j + 1;
end
M1_2 = csvread('M4_2_28_07_19.csv'); 
i = 1;
j = 1;
while (i < numel(M1_2))
    M1_2_2(j,1) = M1_2(i,1);
    i = i + 2;
    j = j + 1;
end
M1_3 = csvread('M4_3_28_07_19.csv');
i = 1;
j = 1;
while (i < numel(M1_3))
    M1_3_3(j,1) = M1_3(i,1);
    i = i + 2;
    j = j + 1;
end
M1_4 = csvread('M4_4_28_07_19.csv');
i = 1;
j = 1;
while (i < numel(M1_4))
    M1_4_4(j,1) = M1_4(i,1);
    i = i + 2;
    j = j + 1;
end
%M1 =  vertcat(M1_1, M1_2, M1_3, M1_4);
M1D = M1_1_1;
M1V = vertcat(M1_2_2, M1_3_3, M1_4_4);
%{
M2_1 = csvread('M2_1_28_07_19.csv');
M2_2 = csvread('M2_2_28_07_19.csv'); 
M2_3 = csvread('M2_3_28_07_19.csv');
M2_4 = csvread('M2_4_28_07_19.csv');
M2 =  vertcat(M2_1, M2_2, M2_3, M2_4);
M3_1 = csvread('M3_1_28_07_19.csv');
M3_2 = csvread('M3_2_28_07_19.csv'); 
M3_3 = csvread('M3_3_28_07_19.csv');
M3_4 = csvread('M3_4_28_07_19.csv');
M3 =  vertcat(M3_1, M3_2, M3_3, M3_4);
M4_1 = csvread('M4_1_28_07_19.csv');
M4_2 = csvread('M4_2_28_07_19.csv'); 
M4_3 = csvread('M4_3_28_07_19.csv');
M4_4 = csvread('M4_4_28_07_19.csv');
M4 =  vertcat(M4_1, M4_2, M4_3, M4_4);
%}
%C1 = customreg(@(x) max(min(x,170),-170),{'y1'},1);
%C2 = customreg(@(x) ((x > 8.5) || (x < -8.5))*x,{'u1'},0);

z1 = iddata(M1D, inD, 0.002);
z2 = iddata(M1V, inV, 0.002);

figure;
OPT_TIME = iddataPlotOptions('time');
OPT_TIME.Grid = 'on';
OPT_TIME.Title.String = 'Input-Output Data - Motor 4';
OPT_TIME.Title.FontSize = 12;
OPT_TIME.Title.FontWeight = 'bold';
plot(z1,OPT_TIME);