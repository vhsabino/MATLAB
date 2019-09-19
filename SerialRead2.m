try

    nucleo144 = serial('COM3','BaudRate',115200);
    fopen(nucleo144);
    time = 0;
    results = zeros(30, 400, 'double');
    t = 0.01:0.01:0.3;
    t = t';
    for j = 1:400
        for i = 1:30
            results(i,j) = fscanf(nucleo144,'%f');
            %results(i) = fscanf(nucleo144,'%f');
        end
        disp(j)
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
 for i = 1:400
        plot(t,results(:,i));
        hold on;
    end  