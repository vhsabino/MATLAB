clc
clear all
close all

%Leitura de dados motor 4 Suspenso
inS = csvread('INPUT_SUSPENSO_15V');
M4_S = csvread('M4_SUSPENSO_RPM');

%Leitura de dados motor 4 no Chão
inG = csvread('INPUT_GROUND_15V');
M4_G = csvread('M4_GROUND_RPM');


%Função de transferência motor 4 suspenso
num7 = 5.839e05;
den7 = [1 108.7 3265];
tf7 = tf(num7,den7)  %TFEST 92.99%

%Função de Transferência motor 4 ground
num8 = 7.462e05;
den8 = [1 200.6 4683];
tf8 = tf(num8,den8) %TFEST 86.56%

%step response
step(tf7);
hold on;
step(tf8);
title('Step Response');
xlabel('seconds');
ylabel('RPM');
legend('Suspenso','Ground');


%closed loop response
figure;

step(feedback(tf7,1));
hold on;
step(feedback(tf8,1));
title('Closed Loop Response');
xlabel('seconds');
ylabel('RPM');
legend('Suspenso','Ground');

%p parameters


myp4_s = pidtune(tf7,'p');
myp4_g = pidtune(tf8,'p');
figure;
step(feedback(myp4_s*tf7,1));
hold on;
step(feedback(myp4_g*tf8,1));
title('P controller');
xlabel('seconds');
ylabel('RPM');
legend('Suspenso','Ground');

%pi parameters
mypi4_s = pidtune(tf7,'pi');
mypi4_g = pidtune(tf8,'pi');
figure;

step(feedback(mypi4_s*tf7,1));
hold on;
step(feedback(mypi4_g*tf8,1));
title('PI controller');
xlabel('seconds');
ylabel('RPM');
legend('Suspenso','Ground');

%pd parameters
mypd4_s = pidtune(tf7,'pd');
mypd4_g = pidtune(tf8,'pd');
figure;
step(feedback(mypd4_s*tf7,1));
hold on;
step(feedback(mypd4_g*tf8,1));
title('PD controller');
xlabel('seconds');
ylabel('RPM');
legend('Suspenso','Ground');

%pid parameters
mypid4_s = pidtune(tf7,'pid');
mypid4_g = pidtune(tf8,'pid');
figure;
step(feedback(mypid4_s*tf7,1));
hold on;
step(feedback(mypid4_g*tf8,1));
title('PID controller');
xlabel('seconds');
ylabel('RPM');
legend('Suspenso','Ground');