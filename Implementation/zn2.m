clc
clear all
close all

Ts = 0.01;
%% Motor 1
%Continuous system
num2 = 1.508e06;
den2 = [1 522 1.09e04];
tf2 = tf(num2,den2)
Pz = c2d(tf2,Ts,'zoh');
%response
[y,t] = step(Pz);
%plot(t,y);
%hold on;
% Estimate the 2nd deriv. by finite differences
yppp = diff(y,2);
yp = gradient(y,t);
ypp = gradient(yp,t);
% Find the root using FZERO
t_infl = fzero(@(T) interp1(t(2:end-1),yppp,T,'linear','extrap'),0)
y_infl = interp1(t,y,t_infl,'linear')
%plot(t_infl,y_infl,'ro');

%scatter(t_infl,y_infl)


d1y = gradient(y,t);                                            % Numerical Derivative
d2y = gradient(d1y,t);                                          % Numerical Second Derivative
t_infl = interp1(d1y, t, max(d1y));                             % Find ‘t’ At Maximum Of First Derivative
y_infl = interp1(t, y, t_infl);                                 % Find ‘y’ At Maximum Of First Derivative
slope  = interp1(t, d1y, t_infl);                               % Slope Defined Here As Maximum Of First Derivative
intcpt = y_infl - slope*t_infl;                                 % Calculate Intercept
tngt = slope*t + intcpt;    % Calculate Tangent Line

figure;
step(tf2);
hold on
%plot(t, y)

%plot(t, d1y, '-.m',    t, d2y, '--c')                           % Plot Derivatives (Optional)
plot(t, tngt, '-r', 'LineWidth',1)                              % Plot Tangent Line
plot(t_infl, y_infl, 'ro')                                      % Plot Maximum Slope
hold off
grid
legend('y(t)', 'y(t) Fit', 'Tangent', 'Location','E')
axis([xlim    min(min(y),intcpt)  ceil(max(y))])

%% Motor 2
Ts = 0.01;
%Continuous system
num4 = 1.043e06;
den4 = [1 274.6 6919];
tf4 = tf(num4,den4)
Pz = c2d(tf4,Ts,'zoh');
%response
[y,t] = step(Pz);
%plot(t,y);
%hold on;
% Estimate the 2nd deriv. by finite differences
yppp = diff(y,2);
yp = gradient(y,t);
ypp = gradient(yp,t);
% Find the root using FZERO
t_infl = fzero(@(T) interp1(t(2:end-1),yppp,T,'linear','extrap'),0)
y_infl = interp1(t,y,t_infl,'linear')
%plot(t_infl,y_infl,'ro');

%scatter(t_infl,y_infl)


d1y = gradient(y,t);                                            % Numerical Derivative
d2y = gradient(d1y,t);                                          % Numerical Second Derivative
t_infl = interp1(d1y, t, max(d1y));                             % Find ‘t’ At Maximum Of First Derivative
y_infl = interp1(t, y, t_infl);                                 % Find ‘y’ At Maximum Of First Derivative
slope  = interp1(t, d1y, t_infl);                               % Slope Defined Here As Maximum Of First Derivative
intcpt = y_infl - slope*t_infl;                                 % Calculate Intercept
tngt = slope*t + intcpt;    % Calculate Tangent Line

figure;
step(tf4);
hold on
%plot(t, y)

%plot(t, d1y, '-.m',    t, d2y, '--c')                           % Plot Derivatives (Optional)
plot(t, tngt, '-r', 'LineWidth',1)                              % Plot Tangent Line
plot(t_infl, y_infl, 'ro')                                      % Plot Maximum Slope
hold off
grid
legend('y(t)', 'y(t) Fit', 'Tangent', 'Location','E')
axis([xlim    min(min(y),intcpt)  ceil(max(y))])

%% Motor 3
Ts = 0.01;
%Continuous system
num6 = 9.018e05;
den6 = [1 199.5 5666];
tf6 = tf(num6,den6)
Pz = c2d(tf6,Ts,'zoh');
%response
[y,t] = step(Pz);
%plot(t,y);
%hold on;
% Estimate the 2nd deriv. by finite differences
yppp = diff(y,2);
yp = gradient(y,t);
ypp = gradient(yp,t);
% Find the root using FZERO
t_infl = fzero(@(T) interp1(t(2:end-1),yppp,T,'linear','extrap'),0)
y_infl = interp1(t,y,t_infl,'linear')
%plot(t_infl,y_infl,'ro');

%scatter(t_infl,y_infl)


d1y = gradient(y,t);                                            % Numerical Derivative
d2y = gradient(d1y,t);                                          % Numerical Second Derivative
t_infl = interp1(d1y, t, max(d1y));                             % Find ‘t’ At Maximum Of First Derivative
y_infl = interp1(t, y, t_infl);                                 % Find ‘y’ At Maximum Of First Derivative
slope  = interp1(t, d1y, t_infl);                               % Slope Defined Here As Maximum Of First Derivative
intcpt = y_infl - slope*t_infl;                                 % Calculate Intercept
tngt = slope*t + intcpt;    % Calculate Tangent Line

figure;
step(tf6);
hold on
%plot(t, y)

%plot(t, d1y, '-.m',    t, d2y, '--c')                           % Plot Derivatives (Optional)
plot(t, tngt, '-r', 'LineWidth',1)                              % Plot Tangent Line
plot(t_infl, y_infl, 'ro')                                      % Plot Maximum Slope
hold off
grid
legend('y(t)', 'y(t) Fit', 'Tangent', 'Location','E')
axis([xlim    min(min(y),intcpt)  ceil(max(y))])

%% Motor 4
Ts = 0.01;
%Continuous system
num8 = 7.462e05;
den8 = [1 200.6 4683];
tf8 = tf(num8,den8)
Pz = c2d(tf8,Ts,'zoh');
%response
[y,t] = step(Pz);
%plot(t,y);
%hold on;
% Estimate the 2nd deriv. by finite differences
yppp = diff(y,2);
yp = gradient(y,t);
ypp = gradient(yp,t);
% Find the root using FZERO
t_infl = fzero(@(T) interp1(t(2:end-1),yppp,T,'linear','extrap'),0)
y_infl = interp1(t,y,t_infl,'linear')
%plot(t_infl,y_infl,'ro');

%scatter(t_infl,y_infl)


d1y = gradient(y,t);                                            % Numerical Derivative
d2y = gradient(d1y,t);                                          % Numerical Second Derivative
t_infl = interp1(d1y, t, max(d1y));                             % Find ‘t’ At Maximum Of First Derivative
y_infl = interp1(t, y, t_infl);                                 % Find ‘y’ At Maximum Of First Derivative
slope  = interp1(t, d1y, t_infl);                               % Slope Defined Here As Maximum Of First Derivative
intcpt = y_infl - slope*t_infl;                                 % Calculate Intercept
tngt = slope*t + intcpt;    % Calculate Tangent Line

figure;
step(tf8);
hold on
%plot(t, y)

%plot(t, d1y, '-.m',    t, d2y, '--c')                           % Plot Derivatives (Optional)
plot(t, tngt, '-r', 'LineWidth',1)                              % Plot Tangent Line
plot(t_infl, y_infl, 'ro')                                      % Plot Maximum Slope
hold off
grid
legend('y(t)', 'y(t) Fit', 'Tangent', 'Location','E')
axis([xlim    min(min(y),intcpt)  ceil(max(y))])