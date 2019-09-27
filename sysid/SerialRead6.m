clear all
close all
data = zeros(200000, 5, 'double');
data1 = zeros(200000, 1, 'int32');
warning('off')
delete(instrfindall);
try
    
    nucleo144 = serial('/dev/ttyACM0','BaudRate',460800);
    fopen(nucleo144);
    %for i = 1:30000
    i = 1;
    while 1
        data1(i,1) = fscanf(nucleo144,'%d');
        data(i,1) = fscanf(nucleo144,'%f');
        data(i,2) = fscanf(nucleo144,'%f');
        data(i,3) = fscanf(nucleo144,'%f');
        data(i,4) = fscanf(nucleo144,'%f');
        data(i,5) = fscanf(nucleo144,'%f');
        disp(i);
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
fprintf("Creating DATA_GROUND_300_27_09_19.csv file..,\n");
csvwrite('DATA_GROUND_300_27_09_19.csv',data);
fprintf("We can continue the code \n");
%unified = horzcat(results1, results2, results3, results4);
% for i = 1:400
%        plot(t,results(:,i));
%        hold on;
%    end  