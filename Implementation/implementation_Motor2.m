clc
clear all
close all

%Leitura de dados motor 2 Suspenso
inS = csvread('INPUT_SUSPENSO_15V');
M2_S = csvread('M2_SUSPENSO_RPM');

%Leitura de dados motor 2 no Chão
inG = csvread('INPUT_GROUND_15V');
M2_G = csvread('M2_GROUND_RPM');

%Função de transferência motor 2 suspenso
num3 = 7.72e05;
den3 = [1 136 4365];
tf3 = tf(num3,den3)  %TFEST 92.65%

%Função de Transferência motor 2 ground
num4 = 1.043e06;
den4 = [1 274.6 6919];
tf4 = tf(num4,den4) %TFEST 85.13%

%step response
step(tf3);
hold on;
step(tf4);
title('Step Response');
xlabel('seconds');
ylabel('RPM');
legend('Suspenso','Ground');


%closed loop response
figure;

step(feedback(tf3,1));
hold on;
step(feedback(tf4,1));
title('Closed Loop Response');
xlabel('seconds');
ylabel('RPM');
legend('Suspenso','Ground');

%p parameters


myp2_s = pidtune(tf3,'p');
myp2_g = pidtune(tf4,'p');
figure;
step(feedback(myp2_s*tf3,1));
hold on;
step(feedback(myp2_g*tf4,1));
title('P controller');
xlabel('seconds');
ylabel('RPM');
legend('Suspenso','Ground');

%pi parameters
mypi2_s = pidtune(tf3,'pi');
mypi2_g = pidtune(tf4,'pi');
figure;

step(feedback(mypi2_s*tf3,1));
hold on;
step(feedback(mypi2_g*tf4,1));
title('PI controller');
xlabel('seconds');
ylabel('RPM');
legend('Suspenso','Ground');

%pd parameters
mypd2_s = pidtune(tf3,'pd');
mypd2_g = pidtune(tf4,'pd');
figure;
step(feedback(mypd2_s*tf3,1));
hold on;
step(feedback(mypd2_g*tf4,1));
title('PD controller');
xlabel('seconds');
ylabel('RPM');
legend('Suspenso','Ground');

%pid parameters
mypid2_s = pidtune(tf3,'pid');
mypid2_g = pidtune(tf4,'pid');
figure;
step(feedback(mypid2_s*tf3,1));
hold on;
step(feedback(mypid2_g*tf4,1));
title('PID controller');
xlabel('seconds');
ylabel('RPM');
legend('Suspenso','Ground');

