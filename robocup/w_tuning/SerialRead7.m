results1 = zeros(5000,1, 'double');
input = zeros(5000, 1, 'double');
delete(instrfindall);
try
    
    nucleo144 = serial('COM5','BaudRate',230400);
    fopen(nucleo144);
    for i = 1:5000
        input(i,1) = fscanf(nucleo144,'%f');
        results1(i,1) = fscanf(nucleo144,'%f');
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