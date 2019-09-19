% draw circle code
% resolution of plot
t3 = linspace(pi,3*pi/2,100000);

% assumed centre of the circle (cirX, cirY): sets at origin(0,0)

cirX3 = 60.50;
cirY3 = 18.50;

% radius of the centre circle, 500mm = 5m
r = 5;

% circle dual equations

x3 = r*cos(t3) + cirX3;
y3 = r*sin(t3) + cirY3;

plot(x3,y3,'Color', 'black');
% end of code