%%Clear all variables
clear all;

%Setup serial port
SerialPort = 'com3'; %Serial port
MaxDeviation = 1000; %Maximum change from one value to next
TimeInterval = 0.001;
loop = 1000;

s = serial(SerialPort);
fopen(s);

time = now;
rpm = 0;

%Setup figure
figureHandle = figure('NumberTitle', 'off', 'name', 'RPM characteristics', 'Color', [0 0 0], 'Visible', 'off');

%Setup axes
axesHandle = axes('Parent', figureHandle, 'YGrid', 'on', 'YColor',[0.9725 0.9725 0.9725], 'XGrid', 'on', 'XColor', [0.9725 0.9725 0.9725], 'Color', [0 0 0]);

hold on;

plotHandle = plot(axesHandle, time, rpm, 'Marker','.','LineWidth', 1,'Colo',[0 1 0]);

xlim(axesHandle,[min(time) max(time+0.001)]);

% Create x label
xlabel('Time','FontWeight','bold','FontSize',14,'Color',[1 1 0]);

% Create y label
ylabel('Speed in RPM','FontWeight', 'bold', 'FontSize',14,'Color',[1 1 0]);

% Create title
title('Real Time Data', 'FontSize', 15, 'Color',[1 1 0]);

%Initializing variables
rpm(1) = 0;
time(1) = 0;
count = 2;
k = 1;

while ~isequal(count, loop)
    %Creating serialport before timeout
    k = k + 1;
    if k == 25
        fclose(s);
        delete(s);
        clear (s);
        s = serial('com3');
        fopen(s)
        k = 0;
    end
    %Serial data accessing
    rpm(count) = fscanf(s,'%f');
    %For reducing error use your own constant
    rpm(1) = 0;
    if (rpm(count) - rpm(count - 1) > MaxDeviation)
        voltage(count) = voltage(count - 1);
    end
    time(count) = count;
    set(plotHandle,'YData', rpm,'XData',time);
    set(figureHandle,'Visible','on');
    datetick('x','mm/DD HH:MM');
    pause(TimeInterval);
    count = count + 1;
end

% Clean up the serial port
fclose(s);
delete(s);
clear s;