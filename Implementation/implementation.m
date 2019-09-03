clc
clear all
close all
%% MOTOR 1
%Leitura de dados motor 1 Suspenso
inS = csvread('INPUT_SUSPENSO_15V');
M1_S = csvread('M1_SUSPENSO_RPM');

%Leitura de dados motor 1 no Chão
inG = csvread('INPUT_GROUND_15V');
M1_G = csvread('M1_GROUND_RPM');

%Função de transferência motor 1 suspenso
num1 = 8.413e05;
den1 = [1 164.9 4980];
tf1 = tf(num1,den1)
%Função de transferência motor 1 suspenso
num1 = 8.413e05/4980;
den1 = [1/4980 164.9/4980 4980/4980];
tf1 = tf(num1,den1)

%Função de Transferência motor 1 ground
num2 = 1.508e06;
den2 = [1 522 1.09e04];
tf2 = tf(num2,den2)
%Função de Transferência motor 1 ground
num2 = 1.508e06/1.09e04;
den2 = [1/1.09e04 522/1.09e04 1.09e04/1.09e04];
tf2 = tf(num2,den2)

%% MOTOR 2

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
%Função de transferência motor 2 suspenso
num3 = 7.72e05/4365;
den3 = [1/4365 136/4365 4365/4365];
tf3 = tf(num3,den3)  %TFEST 92.65%

%Função de Transferência motor 2 ground
num4 = 1.043e06;
den4 = [1 274.6 6919];
tf4 = tf(num4,den4) %TFEST 85.13%
%Função de Transferência motor 2 ground
num4 = 1.043e06/6919;
den4 = [1/6919 274.6/6919 6919/6919];
tf4 = tf(num4,den4) %TFEST 85.13%

%% MOTOR 3

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
%Função de transferência motor 3 suspenso
num5 = 7.127e05/3969;
den5 = [1/3969 117.9/3969 3969/3969];
tf5 = tf(num5,den5)  %TFEST 92.87%

%Função de Transferência motor 3 ground
num6 = 9.018e05;
den6 = [1 199.5 5666];
tf6 = tf(num6,den6) %TFEST 86.71%
%Função de Transferência motor 3 ground
num6 = 9.018e05/5666;
den6 = [1/5666 199.5/5666 5666/5666];
tf6 = tf(num6,den6) %TFEST 86.71%

%% MOTOR 4

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
%Função de transferência motor 4 suspenso
num7 = 5.839e05/3265;
den7 = [1/3265 108.7/3265 3265/3265];
tf7 = tf(num7,den7)  %TFEST 92.99%

%Função de Transferência motor 4 ground
num8 = 7.462e05;
den8 = [1 200.6 4683];
tf8 = tf(num8,den8) %TFEST 86.56%
%Função de Transferência motor 4 ground
num8 = 7.462e05/4683;
den8 = [1/4683 200.6/4683 4683/4683];
tf8 = tf(num8,den8) %TFEST 86.56%

%step response suspenso
step(tf1);
hold on;
step(tf3);
step(tf5);
step(tf7);
title('Step Response Suspenso');
xlabel('seconds');
ylabel('RPM');
legend('Motor 1','Motor 2','Motor 3','Motor 4');

%step response ground
figure;
step(tf2);
hold on;
step(tf3);
step(tf6);
step(tf8);
title('Step Response Ground');
xlabel('seconds');
ylabel('RPM');
legend('Motor 1','Motor 2','Motor 3','Motor 4');

%closed loop response suspenso
figure;

step(feedback(tf1,1));
hold on;
step(feedback(tf3,1));
step(feedback(tf5,1));
step(feedback(tf7,1));
title('Closed Loop Response Suspenso');
xlabel('seconds');
ylabel('RPM');
legend('Motor 1','Motor 2','Motor 3','Motor 4');

%closed loop response Ground
figure;

step(feedback(tf2,1));
hold on;
step(feedback(tf4,1));
step(feedback(tf6,1));
step(feedback(tf8,1));
title('Closed Loop Response Ground');
xlabel('seconds');
ylabel('RPM');
legend('Motor 1','Motor 2','Motor 3','Motor 4');

%p parameters suspenso

figure;
myp1_s = pidtune(tf1,'p');
myp2_s = pidtune(tf3,'p');
myp3_s = pidtune(tf5,'p');
myp4_s = pidtune(tf7,'p');

step(feedback(myp1_s*tf1,1));
hold on;
step(feedback(myp2_s*tf3,1));
step(feedback(myp3_s*tf5,1));
step(feedback(myp4_s*tf7,1));
title('P controller suspenso');
xlabel('seconds');
ylabel('RPM');
legend('Motor 1','Motor 2','Motor 3','Motor 4');

%p parameters ground
figure;
myp1_g = pidtune(tf2,'p');
myp2_g = pidtune(tf4,'p');
myp3_g = pidtune(tf6,'p');
myp4_g = pidtune(tf8,'p');

step(feedback(myp1_g*tf2,1));
hold on;
step(feedback(myp2_g*tf4,1));
step(feedback(myp3_g*tf6,1));
step(feedback(myp4_g*tf8,1));
title('P controller Ground');
xlabel('seconds');
ylabel('RPM');
legend('Motor 1','Motor 2','Motor 3','Motor 4');

%pi parameters suspenso
figure;
mypi1_s = pidtune(tf1,'pi');
mypi2_s = pidtune(tf3,'pi');
mypi3_s = pidtune(tf5,'pi');
mypi4_s = pidtune(tf7,'pi');

step(feedback(mypi1_s*tf1,1));
hold on;
step(feedback(mypi2_s*tf3,1));
step(feedback(mypi3_s*tf5,1));
step(feedback(mypi4_s*tf7,1));
title('PI controller Suspenso');
xlabel('seconds');
ylabel('RPM');
legend('Motor 1','Motor 2','Motor 3','Motor 4');

%pi controller ground
figure;
mypi1_g = pidtune(tf2,'pi');
mypi2_g = pidtune(tf4,'pi');
mypi3_g = pidtune(tf6,'pi');
mypi4_g = pidtune(tf8,'pi');

step(feedback(mypi1_g*tf2,1));
hold on;
step(feedback(mypi2_g*tf4,1));
step(feedback(mypi3_g*tf6,1));
step(feedback(mypi4_g*tf8,1));
title('PI controller Ground');
xlabel('seconds');
ylabel('RPM');
legend('Motor 1','Motor 2','Motor 3','Motor 4');

%pd parameters suspenso
figure;
mypd1_s = pidtune(tf1,'pd');
mypd2_s = pidtune(tf3,'pd');
mypd3_s = pidtune(tf5,'pd');
mypd4_s = pidtune(tf7,'pd');

step(feedback(mypd1_s*tf1,1));
hold on;
step(feedback(mypd2_s*tf3,1));
step(feedback(mypd3_s*tf5,1));
step(feedback(mypd4_s*tf7,1));
title('PD controller Suspenso');
xlabel('seconds');
ylabel('RPM');
legend('Motor 1','Motor 2','Motor 3','Motor 4');

%pd controller ground
figure;
mypd1_g = pidtune(tf2,'pd');
mypd2_g = pidtune(tf4,'pd');
mypd3_g = pidtune(tf6,'pd');
mypd4_g = pidtune(tf8,'pd');

step(feedback(mypd1_g*tf2,1));
hold on;
step(feedback(mypd2_g*tf4,1));
step(feedback(mypd3_g*tf6,1));
step(feedback(mypd4_g*tf8,1));
title('PD controller Ground');
xlabel('seconds');
ylabel('RPM');
legend('Motor 1','Motor 2','Motor 3','Motor 4');

%pid parameters suspenso
figure;
mypid1_s = pidtune(tf1,'pid');
mypid2_s = pidtune(tf3,'pid');
mypid3_s = pidtune(tf5,'pid');
mypid4_s = pidtune(tf7,'pid');

step(feedback(mypid1_s*tf1,1));
hold on;
step(feedback(mypid2_s*tf3,1));
step(feedback(mypid3_s*tf5,1));
step(feedback(mypid4_s*tf7,1));
title('PID controller Suspenso');
xlabel('seconds');
ylabel('RPM');
legend('Motor 1','Motor 2','Motor 3','Motor 4');

%pid controller ground
figure;
mypid1_g = pidtune(tf2,'pid');
mypid2_g = pidtune(tf4,'pid');
mypid3_g = pidtune(tf6,'pid');
mypid4_g = pidtune(tf8,'pid');

step(feedback(mypid1_g*tf2,1));
hold on;
step(feedback(mypid2_g*tf4,1));
step(feedback(mypid3_g*tf6,1));
step(feedback(mypid4_g*tf8,1));
title('PID controller Ground');
xlabel('seconds');
ylabel('RPM');
legend('Motor 1','Motor 2','Motor 3','Motor 4');

figure;
step(feedback(mypid3_g*tf2,1));
hold on;
step(feedback(mypid3_g*tf4,1));
step(feedback(mypid3_g*tf6,1));
step(feedback(mypid3_g*tf8,1));
title('PID controller Ground PID Motor 3');
xlabel('seconds');
ylabel('RPM');
legend('Motor 1','Motor 2','Motor 3','Motor 4');