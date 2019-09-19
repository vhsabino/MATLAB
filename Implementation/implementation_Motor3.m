clc
clear all
close all

%Leitura de dados motor 3 Suspenso
inS = csvread('INPUT_SUSPENSO_15V');
M3_S = csvread('M3_SUSPENSO_RPM');

%Leitura de dados motor 3 no Chão
inG = csvread('INPUT_GROUND_15V');
M3_G = csvread('M3_GROUND_RPM');

%Função de transferência motor 3 suspenso
num5 = 7.127e05;
den5 = [1 117.9 3969];
tf5 = tf(num5,den5)  %TFEST 92.87%

%Função de Transferência motor 3 ground
num6 = 9.018e05;
den6 = [1 199.5 5666];
tf6 = tf(num6,den6) %TFEST 86.71%

%step response
step(tf5);
hold on;
step(tf6);
title('Step Response');
xlabel('seconds');
ylabel('RPM');
legend('Suspenso','Ground');


%closed loop response
figure;

step(feedback(tf5,1));
hold on;
step(feedback(tf6,1));
title('Closed Loop Response');
xlabel('seconds');
ylabel('RPM');
legend('Suspenso','Ground');

%p parameters


myp3_s = pidtune(tf5,'p');
myp3_g = pidtune(tf6,'p');
figure;
step(feedback(myp3_s*tf5,1));
hold on;
step(feedback(myp3_g*tf6,1));
title('P controller');
xlabel('seconds');
ylabel('RPM');
legend('Suspenso','Ground');

%pi parameters
mypi3_s = pidtune(tf5,'pi');
mypi3_g = pidtune(tf6,'pi');
figure;

step(feedback(mypi3_s*tf5,1));
hold on;
step(feedback(mypi3_g*tf6,1));
title('PI controller');
xlabel('seconds');
ylabel('RPM');
legend('Suspenso','Ground');

%pd parameters
mypd3_s = pidtune(tf5,'pd');
mypd3_g = pidtune(tf6,'pd');
figure;
step(feedback(mypd3_s*tf5,1));
hold on;
step(feedback(mypd3_g*tf6,1));
title('PD controller');
xlabel('seconds');
ylabel('RPM');
legend('Suspenso','Ground');

%pid parameters
mypid3_s = pidtune(tf5,'pid');
mypid3_g = pidtune(tf6,'pid');
figure;
step(feedback(mypid3_s*tf5,1));
hold on;
step(feedback(mypid3_g*tf6,1));
title('PID controller');
xlabel('seconds');
ylabel('RPM');
legend('Suspenso','Ground');
