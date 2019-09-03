clc
clear all

% Reading train and validation experiments
% Concatenating both into one vector of 12000 samples
%inRaw_S_T = csvread('INPUT_SUSPENSO_TRAIN');
%inRaw_S_V = csvread('INPUT_SUSPENSO_VALIDATION');
%inRaw_S = vertcat(inRaw_S_T, inRaw_S_V);

%inRaw_G_T = csvread('INPUT_GROUND_TRAIN');
%inRaw_G_V = csvread('INPUT_GROUND_VALIDATION');
%inRaw_G = vertcat(inRaw_G_T, inRaw_G_V);

%inS = (inRaw_S .* (15/100));   %Mapping Suspense data to voltage
%inG = (inRaw_G .* (15/100));   %Mapping Ground data to voltage

%csvwrite('INPUT_SUSPENSO_15V',inS); %dados de entrada mapeados para 15V
%csvwrite('INPUT_GROUND_15V',inG); %dados de entrada mapeados para 15V

% Train experimental suspended Motor 2
outRaw4_S_T = csvread('M4_SUSPENSO_50DUTY_TRAIN');
outputM4_ST = (outRaw4_S_T .* (60 / 380));  %Maxon datasheet 380 rpm/V
outputRPM4_ST = (outRaw4_S_T .* 60); %From RPS to RPM

% Validation experimental suspended Motor 1
outRaw4_S_V = csvread('M4_SUSPENSO_50DUTY_VALIDATION');
outputM4_SV = (outRaw4_S_V .* (60 / 380));  %Maxon datasheet 380 rpm/V
outputRPM4_SV = (outRaw4_S_V .* 60); % From RPS to RPM

% Concatenating both into one vector of 12000 samples
outputRPM4_S = vertcat(outputRPM4_ST,outputRPM4_SV);
csvwrite('M4_SUSPENSO_RPM',outputRPM4_S);

% Train experimental ground Motor 1
outRaw4_G_T = csvread('M4_GROUND_50DUTY_TRAIN');
outputM4_GT = (outRaw4_G_T .* (60 / 380));  %Maxon datasheet 380 rpm/V
outputRPM4_GT = (outRaw4_G_T .* 60); %From RPS to RPM

% Validation experimental ground Motor 1
outRaw4_G_V = csvread('M4_GROUND_50DUTY_VALIDATION');
outputM4_GV = (outRaw4_G_V .* (60 / 380));  %Maxon datasheet 380 rpm/V
outputRPM4_GV = (outRaw4_G_V .* 60);

% Concatenating both into one vector of 12000 samples
outputRPM4_G = vertcat(outputRPM4_GT,outputRPM4_GV);
csvwrite('M4_GROUND_RPM',outputRPM4_G);