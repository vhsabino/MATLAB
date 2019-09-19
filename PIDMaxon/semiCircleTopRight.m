% draw circle code
% resolution of plot
t4 = linspace(pi/2,pi,100000);

% assumed centre of the circle (cirX, cirY): sets at origin(0,0)

cirX4 = 60.50;
cirY4 = 22.00;

% radius of the centre circle, 500mm = 5m
r = 5;

% circle dual equations

x4 = r*cos(t4) + cirX4;
y4 = r*sin(t4) + cirY4;

plot(x4,y4,'Color', 'black');
% end of code