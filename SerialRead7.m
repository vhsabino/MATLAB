results1 = zeros(2000,1, 'double');
results2 = zeros(2000,1, 'double');
results3 = zeros(2000,1, 'double');
results4 = zeros(2000,1, 'double');
input = zeros(2000, 1, 'double');
delete(instrfindall);
try
    
    nucleo144 = serial('COM4','BaudRate',460800);
    fopen(nucleo144);
    for i = 1:2000
        input(i,1) = fscanf(nucleo144,'%f');
        results1(i,1) = fscanf(nucleo144,'%f');
        results2(i,1) = fscanf(nucleo144,'%f');
        results3(i,1) = fscanf(nucleo144,'%f');
        results4(i,1) = fscanf(nucleo144,'%f');
        disp(input(i,1));
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
   disp('Failed!');
   fclose(nucleo144);       % close connection to prevent COM port being lokced open
   delete (nucleo144)       % deleting serial port object
   clear nucleo144                              
   %clear all
end

%unified = horzcat(results1, results2, results3, results4);
% for i = 1:400
%        plot(t,results(:,i));
%        hold on;
%    end  