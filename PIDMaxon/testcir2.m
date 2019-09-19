% draw circle code
% resolution of plot
t = linspace(0,2*pi,100000);

% assumed centre of the circle (cirX, cirY): sets at origin(0,0)

cirX = 30.25;
cirY = 20.25;

% radius of the centre circle, 500mm = 5m
r = 5;

% circle dual equations

x = r*cos(t) + cirX;
y = r*sin(t) + cirY;

plot(x,y,'Color', 'black');
% end of code