P = 4095; % Num. Samples
nu = 1; % Num. inputs
T = 0.05; % Sampling time (seconds)
N = [P nu T];
band = [0 1]; % Band
range = [15 35]; % PWM Range
u1 = idinput([4095,1,1],'PRBS',band,range);
t = 0:T:(P-1)*T;
plot(t,u1)
hold on
%plot(u1)
title('Periodic Signal')
for i = 4000:4095
   fprintf("%d, ",u1(i)); 
   if mod(i,15) == 0
       fprintf("\n");
   end
end