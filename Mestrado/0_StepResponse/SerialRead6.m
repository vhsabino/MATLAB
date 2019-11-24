clear all
close all
data = zeros(10000, 4, 'double');
%data1 = zeros(200000, 1, 'int32');
warning('off')
delete(instrfindall);

try
    
    nucleo144 = serial('COM7','BaudRate',460800);
    fopen(nucleo144);
    %for i = 1:30000
    i = 1;
    while 1
        %data1(i,1) = fscanf(nucleo144,'%d');
        data(i,1) = fscanf(nucleo144,'%f');
        data(i,2) = fscanf(nucleo144,'%f');
        data(i,3) = fscanf(nucleo144,'%f');
        data(i,4) = fscanf(nucleo144,'%f');
        %data(i,5) = fscanf(nucleo144,'%f');
        %disp(i);
        i = i + 1;
    end
    %for i = 1:300
    %   input(i,1) = fscanf(nucleo144,'%d'); 
    %end
    %for i = 1:300
    %  results1(i,1) = fscanf(nucleo144,'%f');
    %end
    %for i = 1:300
    %  results2(i,1) = fscanf(nucleo144,'%f');
    %end
    %%for i = 1:300
    %  results3(i,1) = fscanf(nucleo144,'%f');
    %%end
    %for i = 1:300
    %  results4(i,1) = fscanf(nucleo144,'%f');
    %end
   
    fclose(nucleo144);       % close connection to prevent COM port being lokced open
    delete (nucleo144)       % deleting serial port object
    clear nucleo144  
    %csvwrite('motor_x_duty_y.csv',results) save matrix to csv file
catch
   disp('Finished reading');
   fclose(nucleo144);       % close connection to prevent COM port being lokced open
   delete (nucleo144)       % deleting serial port object
   clear nucleo144                              
   %clear all
end
fprintf("Creating STEP_20_MOTOR_DRIB_21_11_2019.csv file..,\n");
csvwrite('STEP_20_MOTOR_DRIB_7ms_21_11_2019.csv',data);
fprintf("We can continue the code \n");
l = i - 1;
tlength = l / 500;
t = 0:0.002:tlength;
IN = data([1:i],1);
M1 = data([1:i],2);
M2 = data([1:i],3);
M3 = data([1:i],4);
M4 = data([1:i],5);
%unified = horzcat(results1, results2, results3, results4);
% for i = 1:400
%        plot(t,results(:,i));
%        hold on;
%    end  
%% Motor 1
plot(t, IN);
hold on
plot(t, M1);
title('Motor 1 data')
xlabel('time (s)') 
ylabel('Speed (rad/s)') 
xlim([-0.5 16.5])
ylim([-65 65])
legend({'Desired','Measured'},'Location','northeast')
%% Motor 2
figure;
plot(t, IN);
hold on
plot(t, M2);
title('Motor 2 data')
xlabel('time (s)') 
ylabel('Speed (rad/s)') 
xlim([-0.5 16.5])
ylim([-65 65])
legend({'Desired','Measured'},'Location','northeast')
%% Motor 3
figure;
plot(t, IN);
hold on
plot(t, M3);
title('Motor 3 data')
xlabel('time (ms)') 
ylabel('Speed (rad/s)') 
xlim([-0.5 16.5])
ylim([-65 65])
legend({'Desired','Measured_AIR'},'Location','northeast')
%% Motor 4
figure;
plot(t, IN);
hold on
plot(t, M4);
title('Motor 4 data')
xlabel('time (s)') 
ylabel('Speed (rad/s)') 
xlim([-0.5 16.5])
ylim([-65 65])
legend({'Desired','Measured'},'Location','northeast')