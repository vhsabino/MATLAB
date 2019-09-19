clc
clear all
c = csvread('Coeff');
c = c';
media = mean(c);
desvio = std(c);
h = lillietest(c)
j = jbtest(c)
%histogram(c,10)
histogram(c,'Normalization','pdf')