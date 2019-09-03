clc
clear all
results3 = csvread('Motor1_Duty20_livre');
t = 0.00:0.01:0.29;
t = t';
column3 = results3(:,3);
normdata = mat2gray(results3);
in = ones(30,1);
column4 = normdata(:,3);
%[r1,g] = createFit(t,column3);
%for i = 1:400
%    column = normdata(:,i);
%    [cfitdata,g] = createFit(t,column);
%    MyCoeffs(i) = coeffvalues(cfitdata);
%end
%h = lillietest(MyCoeffs)
%media = mean(results2(5,:))
%desvio = std(results2(5,:))
%p1 = -3*desvio;
%p2 = -p1;
%for i = 1:400
%   if results2(5,i) > p1 && results2(5,i) < p2
%       r(i) = results2(5,i);
%   end
       
%end    
%histogram(r,10)
 %for i = 1:400
 %       plot(t,results2(:,i));
 %       hold on;
 %end
%grid on
%title('Step Response para um Duty Cycle de 20% do PWM')
%xlabel('t(s)')
%ylabel('Velocidade (RPS)')