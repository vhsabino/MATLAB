% draw circle code
% resolution of plot
t1 = linspace(0,pi/2,100000);

% assumed centre of the circle (cirX, cirY): sets at origin(0,0)

cirX1 = 0;
cirY1 = 22.00;

% radius of the centre circle, 500mm = 5m
r = 5;

% circle dual equations

x1 = r*cos(t1) + cirX1;
y1 = r*sin(t1) + cirY1;

plot(x1,y1,'Color', 'black');
% end of code