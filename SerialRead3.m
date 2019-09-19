try
    nucleo144 = serial('COM4','BaudRate',115200);
    fopen(nucleo144);
    results = zeros(12000,1, 'double');
    %t = 0.01:0.01:100;
    %t = t';
    input = zeros(12000, 1, 'int32');
    index = 0;
    for j = 1:400
            index = fscanf(nucleo144,'%d');
            disp(index);
    end
    for i = 1:12000
       input(i,1) = fscanf(nucleo144,'%d'); 
    end
    for i = 1:12000
      results(i,1) = fscanf(nucleo144,'%f');
    end
   
    fclose(nucleo144);       % close connection to prevent COM port being lokced open
    delete (nucleo144)       % deleting serial port object
    clear nucleo144  
    % csvwrite('motor_x_duty_y.csv',results) save matrix to csv file
catch
   disp('Failed!');
   fclose(nucleo144);       % close connection to prevent COM port being lokced open
   delete (nucleo144)       % deleting serial port object
   clear nucleo144                              
   clear all
end
% for i = 1:400
%        plot(t,results(:,i));
%        hold on;
%    end  