
clc;

clc;
clear all;
close all;

pkg load statistics;
#Α Ερώτημα
k=0:0.0001:8;
lamda=[0.5,1,3];

for i=1:columns(lamda)
  exp(i,:) = exppdf(k,lamda(i));
endfor

colors="rgb";
figure(1);
hold on;

for i=1:columns(lamda)
  plot(k,exp(i,:),colors(i),"linewidth",1.1);
endfor

hold off;
 
set(gca, 'FontSize', 14)
title("Probability Density function of Exponential processes");
xlabel("k values");
ylabel("probability");
legend("1/ λ=0.5","1/ λ=1","1/ λ=3");

#Β Ερώτημα
k=0:0.0001:8;
lamda=[0.5,1,3];

for i=1:columns(lamda)
  exp(i,:) = expcdf(k,lamda(i));
endfor

colors="rgb";
figure(2);
hold on;

for i=1:columns(lamda)
  plot(k,exp(i,:),colors(i),"linewidth",1.1);
endfor

hold off;
 
set(gca, 'FontSize', 14)
title("Probability Cumulative function of Exponential processes");
xlabel("k values");
ylabel("probability");
legend("1/ λ=0.5","1/ λ=1","1/ λ=3");

#Γ Ερώτημα
k=0:0.00001:8;
exp=expcdf(k,2.5);
pr1=1-exp(30000);
disp ("Probability 1 is:"),disp(pr1);
pr2=(1-exp(50000))./(1-exp(20000));
disp ("Probability 2 is:"), disp(pr2);