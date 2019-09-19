% draw circle code
% resolution of plot
t2 = linspace(2*pi,3*pi/2,100000);

% assumed centre of the circle (cirX, cirY): sets at origin(0,0)

cirX2 = 0;
cirY2 = 18.50;

% radius of the centre circle, 500mm = 5m
r = 5;

% circle dual equations

x2 = r*cos(t2) + cirX2;
y2 = r*sin(t2) + cirY2;

plot(x2,y2,'Color', 'black');
% end of code