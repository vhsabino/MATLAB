clc
clear all

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

%Função de Transferência motor 1 ground
num2 = 1.508e06;
den2 = [1 522 1.09e04];
tf2 = tf(num2,den2)


%step response
step(tf1);
hold on;
step(tf2);
title('Step Response');
xlabel('seconds');
ylabel('RPM');
legend('Suspenso','Ground');


%closed loop response
figure;

step(feedback(tf1,1));
hold on;
step(feedback(tf2,1));
title('Closed Loop Response');
xlabel('seconds');
ylabel('RPM');
legend('Suspenso','Ground');

%p parameters


myp1_s = pidtune(tf1,'p');
myp1_g = pidtune(tf2,'p');
figure;
step(feedback(myp1_s*tf1,1));
hold on;
step(feedback(myp1_g*tf2,1));
title('P controller');
xlabel('seconds');
ylabel('RPM');
legend('Suspenso','Ground');

%pi parameters
mypi1_s = pidtune(tf1,'pi');
mypi1_g = pidtune(tf2,'pi');
figure;

step(feedback(mypi1_s*tf1,1));
hold on;
step(feedback(mypi1_g*tf2,1));
title('PI controller');
xlabel('seconds');
ylabel('RPM');
legend('Suspenso','Ground');

%pd parameters
mypd1_s = pidtune(tf1,'pd');
mypd1_g = pidtune(tf2,'pd');
figure;
step(feedback(mypd1_s*tf1,1));
hold on;
step(feedback(mypd1_g*tf2,1));
title('PD controller');
xlabel('seconds');
ylabel('RPM');
legend('Suspenso','Ground');

%pid parameters
mypid1_s = pidtune(tf1,'pid');
mypid1_g = pidtune(tf2,'pid');
figure;
step(feedback(mypid1_s*tf1,1));
hold on;
step(feedback(mypid1_g*tf2,1));
title('PID controller');
xlabel('seconds');
ylabel('RPM');
legend('Suspenso','Ground');