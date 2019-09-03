clear
close all

%acivities needed on the robot field layout

%test plot sample
len = 100
robot = zeros(1, len);

%start position
X(1) = -40;
Y(1) = -40;

% move to coordinates
x_goal = 0;
y_goal = 0;

%
% just something to plot
% this will be for the actual robot movement path
%

for n=1:len
	robot(n) = sin(n) + 10;
end
% plot robot movement
hold on
plot(robot, 'color', 'red')

% plot the robot pitch layout
newFieldSpec

% end of code