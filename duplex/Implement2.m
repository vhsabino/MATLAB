clc
clear all
close all
warning('off')
MODO = 'DIR'; %DIR or DRIB or PLOT

if strcmpi('DIR',MODO)
    
    %% 1 Reading Data
    %in = csvread('INPUT_27_07_19.csv');
    %M1 = csvread('M1_27_07_19.csv');
    %M2 = csvread('M2_27_07_19.csv');
    %M3 = csvread('M3_27_07_19.csv');
    %M4 = csvread('M4_27_07_19.csv');
    %% 2 Data processing
    %merging all data
    %data = horzcat(in, M1, M2, M3, M4);
    data = csvread('DATA_GROUND_60_17_09_19.csv');
    %sorting data based on first column
    dataS = sortrows(data,1,'ascend');
    %Finding zero speeds due to motor inertia
    j = 1;
    for i = 1:length(dataS)
        ref = dataS(i,2) + dataS(i,3) + dataS(i,4) + dataS(i,5);
       if ref == 0 || (dataS(i,1) >= -8 && (dataS(i,1) <= 8))
        toDelet(j) = i;
        j = j + 1;
       end
    end    
    fprintf('Found %d data to delet\n',length(toDelet));
    %Deleting rows with zero speeds from sorted data to build the curve
    dataS(toDelet(1):toDelet(end),:) = []; 
    %Sorting between positive and negative PWMs
    dataSMode = getMode(dataS);
    dataSMean = getMean(dataS);
    dataSMedian = getMedian(dataS);
    j = 1;
    k = 1;
    for i=1:length(dataSMean)
       if dataSMean(i,1) < 0
          data_NEG(j,:) = dataSMean(i,:);
          j = j + 1;
       else
          data_POS(k,:) = dataSMean(i,:);
          k = k + 1;  
       end
    end
    
    in_POS = data_POS(:,1);
    M1_POS = data_POS(:,2);
    M2_POS = data_POS(:,3);
    M3_POS = data_POS(:,4);
    M4_POS = data_POS(:,5);

    in_NEG = data_NEG(:,1);
    M1_NEG = data_NEG(:,2);
    M2_NEG = data_NEG(:,3);
    M3_NEG = data_NEG(:,4);
    M4_NEG = data_NEG(:,5);
    %% 3 Plotting data

    %Negative data
    figure('WindowState','minimized');
    plot(M1_POS,  in_POS, '.');
    hold on
    plot(M2_POS,  in_POS, '.');
    plot(M3_POS,  in_POS, '.');
    plot(M4_POS,  in_POS, '.');
    %title('Motor  Curve - Positive');
    %ylabel('PWM');
    %xlabel('Rad/s');

    %Positive data
    %figure('WindowState','minimized');
    plot(M1_NEG, in_NEG, '.');
    hold on
    plot(M2_NEG, in_NEG, '.');
    plot(M3_NEG, in_NEG, '.');
    plot(M4_NEG, in_NEG, '.');
    title('Motor 1 GND Curve - Mean');
    ylabel('PWM');
    xlabel('Rad/s');

    %% 4 Fitting
    
        %Motor 1
    figure;
    %plot(in,M1,'-','LineWidth',2);
    a1 = plot(dataSMean(:,2),dataSMean(:,1),'-','lineWidth', 1.5); M1 = 'real data';
    title('PWM x Speed - Motor 1');
    ylabel('PWM (%dutyCycle)');
    xlabel('Speed (rad/s)');
    hold on
    x1 = 1:8:140;
    x2 = -140:8:-1;

    hold on
    grid on
    y1 = 0.5216  * x1 + 8.973; %POS
    y2 = 0.5188 * x2 - 8.572; %NEG
    a2 = plot(x1,y1,'-ro', 'lineWidth', 1.5); M2 = 'Positive Curve';
    a3 = plot(x2,y2,'-m*', 'lineWidth', 1.5); M3 = 'Negative Curve';    
   
    legend([a1;a2;a3], M1, M2, M3, 'Location', 'northwest')
    
    %Motor 2
    figure;
    %plot(in,M1,'-','LineWidth',2);
    a1 = plot(dataSMean(:,3),dataSMean(:,1),'-','lineWidth', 1.5); M1 = 'real data';
    title('PWM x Speed - Motor 2');
    ylabel('PWM (%dutyCycle)');
    xlabel('Speed (rad/s)');
    hold on
    x1 = 1:8:140;
    x2 = -140:8:-1;

    hold on
    grid on
    y1 = 0.5248 * x1 + 8.608; %POS
    y2 = 0.5226 * x2 - 8.52;  %NEG
    a2 = plot(x1,y1,'-ro', 'lineWidth', 1.1); M2 = 'Positive Curve';
    a3 = plot(x2,y2,'-m*', 'lineWidth', 1.1); M3 = 'Negative Curve';    
   
    legend([a1;a2;a3], M1, M2, M3, 'Location', 'northwest')
    
    %Motor 3
    figure;
    %plot(in,M1,'-','LineWidth',2);
    a1 = plot(dataSMean(:,4),dataSMean(:,1),'-','lineWidth', 1.5); M1 = 'real data';
    title('PWM x Speed - Motor 3');
    ylabel('PWM (%dutyCycle)');
    xlabel('Speed (rad/s)');
    hold on
    x1 = 1:8:140;
    x2 = -140:8:-1;

    hold on
    grid on
    y1 = 0.512 * x1 + 8.585;
    y2 = 0.517 * x2 - 8.679;
    a2 = plot(x1,y1,'-ro', 'lineWidth', 1.1); M2 = 'Positive Curve';
    a3 = plot(x2,y2,'-m*', 'lineWidth', 1.1); M3 = 'Negative Curve';    
   
    legend([a1;a2;a3], M1, M2, M3, 'Location', 'northwest')
    
    %Motor 4
    figure;
    %plot(in,M1,'-','LineWidth',2);
    a1 = plot(dataSMean(:,5),dataSMean(:,1),'-','lineWidth', 1.5); M1 = 'real data';
    title('PWM x Speed - Motor 4');
    ylabel('PWM (%dutyCycle)');
    xlabel('Speed (rad/s)');
    hold on
    x1 = 1:8:140;
    x2 = -140:8:-1;

    hold on
    grid on
    y1 = 0.5079 * x1 + 9.063;
    y2 = 0.5124 * x2 - 8.948;
    a2 = plot(x1,y1,'-ro', 'lineWidth', 1.1); M2 = 'Positive Curve';
    a3 = plot(x2,y2,'-m*', 'lineWidth', 1.1); M3 = 'Negative Curve';  
    
    [fit1_POS,gof1_POS] = getBestFit(M1_POS, in_POS, 'Motor 1 - Positive Curve');
    [fit2_POS,gof2_POS] = getBestFit(M2_POS, in_POS, 'Motor 2 - Positive Curve');
    [fit3_POS,gof3_POS] = getBestFit(M3_POS, in_POS, 'Motor 3 - Positive Curve');
    [fit4_POS,gof4_POS] = getBestFit(M4_POS, in_POS, 'Motor 4 - Positive Curve');
    [fit1_NEG,gof1_NEG] = getBestFit(M1_NEG, in_NEG, 'Motor 1 - Negative Curve');
    [fit2_NEG,gof2_NEG] = getBestFit(M2_NEG, in_NEG, 'Motor 2 - Negative Curve');
    [fit3_NEG,gof3_NEG] = getBestFit(M3_NEG, in_NEG, 'Motor 3 - Negative Curve');
    [fit4_NEG,gof4_NEG] = getBestFit(M4_NEG, in_NEG, 'Motor 4 - Negative Curve');


    figure; 
    plot(fit1_POS,in_POS, M1_POS );
elseif strcmpi('DRIB',MODO)
    inD = csvread('INPUT_DRIBBLER_30_08_19.csv');
	M5 = csvread('M5_DRIBBLER_30_08_19.csv');    
	%merging all data
	data = horzcat(inD, M5);
	%sorting data based on first column
	dataS = sortrows(data,1,'ascend');
	%Finding zero speeds due to motor inertia
	j = 1;
	for i = 1:length(dataS)
        ref = dataS(i,2);
        if ref == 0
            toDelet(j) = i;
            j = j + 1;
        end
    end    
	fprintf('Found %d data to delet\n',length(toDelet));
	%Deleting rows with zero speeds from sorted data to build the curve
	dataS(toDelet(1):toDelet(end),:) = []; 
	%Sorting between positive and negative PWMs
	j = 1;
	k = 1;
  	for i=1:length(dataS)
        if dataS(i,1) < 0
            data_NEG(j,:) = dataS(i,:);
            j = j + 1;
        else
            data_POS(k,:) = dataS(i,:);
            k = k + 1;  
        end
    end
            
	in_POS = data_POS(:,1);
	M5_POS = data_POS(:,2);  
	in_NEG = data_NEG(:,1);
	M5_NEG = data_NEG(:,2);   
	%% 3 Plotting data

	%Negative data
	figure('WindowState','minimized');
	plot(M5_POS,  in_POS, '.');
	%hold on
	%plot(M2_POS,  in_POS, '.');
	%plot(M3_POS,  in_POS, '.');
	%plot(M4_POS,  in_POS, '.');
	title('Motor  Curve - Positive');
	ylabel('PWM');
	xlabel('Rad/s');

	%Positive data
	figure('WindowState','minimized');
	plot(M5_NEG, in_NEG, '.');
	hold on
	%plot(M2_NEG, in_NEG, '.');
	%plot(M3_NEG, in_NEG, '.');
	%plot(M4_NEG, in_NEG, '.');
	title('Motor  Curve - Negative');
	ylabel('PWM');
	xlabel('Rad/s');
	%% 4 Fitting

	[fit1_POS,gof1_POS] = getBestFit(M5_POS, in_POS, 'Motor Dribbler POS');    
	[fit1_NEG,gof1_NEG] = getBestFit(M5_NEG, in_NEG, 'Motor Dribbler NEG');
    
	figure; 
	plot(fit1_POS,M5_POS,in_POS);
elseif strcmpi('PLOT',MODO)
	fprintf('Initializing real time plot...\n');
    x=[0:.02:16];
    y=sin(3*x);
    figure(1);hold all
    Dx=50;y1=-1.2;y2=1.2;
    for n=1:1:numel(x)
        plot(x,y,'blue');axis([x(n) x(n+Dx) y1 y2]);drawnow
    end
else 
	fprintf('Incorrect mode, please check it and try again\n');
end

%{
[fit2_POS,gof2_POS] = getBestFit(M2_POS, in_POS)
[fit3_POS,gof3_POS] = getBestFit(M3_POS, in_POS)
[fit4_POS,gof4_POS] = getBestFit(M4_POS, in_POS)

[fit1_NEG,gof1_NEG] = getBestFit(M1_NEG, in_NEG)
[fit2_NEG,gof2_NEG] = getBestFit(M2_NEG, in_NEG)
[fit3_NEG,gof3_NEG] = getBestFit(M3_NEG, in_NEG)
[fit4_NEG,gof4_NEG] = getBestFit(M4_NEG, in_NEG)
%}
%% Function

%{
function [fitting,gof] = getBestFit(MotorData, inputData)
    [fitting, gof] = fit(MotorData, inputData, 'poly3', 'robust','on')
    for i=4:7
        st = i;
        pol = ['poly' num2str(st)];
        [tempFitting,tempGof] = fit(MotorData, inputData, pol, 'robust','on')
        if (gof.sse - tempGof.sse) > 10
            [fitting,gof] = fit(MotorData, inputData, pol, 'robust','on');  
            fprintf('poly%d is better\n',st);
        end
    end
end
%}

%hold on  
%plot(M1_2, in2, '.');
%figure;
%plot(inRAW,M2_RAW, '.');
%title('Motor 2 Curve - RAW');
%ylabel('PWM');
%xlabel('Rad/s');
%figure;

%plot(inRAW,M3_RAW, '.');
%title('Motor 3 Curve - RAW');
%ylabel('PWM');
%xlabel('Rad/s');
%figure;

%plot(inRAW,M4_RAW, '.');
%title('Motor 4 Curve - RAW');
%ylabel('PWM');
%xlabel('Rad/s');

%% 2 Plots
%{
fprintf('Plotting Data ...\n')
m = length(in) %N�mero de exemplos
figure;
%plot(in,M1);
plot(M1, in);
title('Motor 1 Curve - line');
ylabel('PWM');
xlabel('Rad/s');

figure;
%plot(in,M1,'.');
plot(M1,in,'.');
title('Motor 1 Curve - points');
ylabel('PWM');
xlabel('Rad/s');

%% Fitting

%fit1 = fit(in, M1, 'poly4')
fit1 = fit(M1, in, 'poly4')
%plot(fit1,in,M1,'.');
plot(fit1, M1, in, '.');
hold on

figure;
%plot(in,M1,'-','LineWidth',2);
plot(M1,in,'-','LineWidth',2);
title('Motor 1 Curve - line');
ylabel('PWM');
xlabel('Rad/s');
hold on
plot(fit1);
%}