k = 1;  %gain
tau = 490/5; %time constant
td = 10; %delay in seconds

G = tf([k],[tau,1],'InputDelay',td)

step(G)