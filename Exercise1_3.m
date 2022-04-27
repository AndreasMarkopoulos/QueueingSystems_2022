
clc;

clc;
clear all;
close all;

pkg load statistics;

#A Ερώτημα
lamda=5;
a=exprnd(1/lamda,1,100);
for i=1:99
  a(i+1)=a(i+1)+a(i);
  endfor
figure(1);
stairs(a,color='r');
set(gca, 'FontSize', 14)
title("Poisson process counting ");
xlabel("Seconds");
ylabel("N(t)");
legend("λ=5");

#B Ερώτημα

#100
lamda=5;
evnts=100;
a=exprnd(1/lamda,1,evnts);
for i=1:(evnts-1)
  a(i+1)=a(i+1)+a(i);
  endfor
figure(2);
stairs(a,color='r');
set(gca, 'FontSize', 14)
title("Poisson process counting ");
xlabel("Seconds");
ylabel("N(t)");
disp ("for 100 events:")
disp ("lamda approx.=");
disp (evnts/a(evnts));

#200
lamda=5;
evnts=200;
a=exprnd(1/lamda,1,evnts);
for i=1:(evnts-1)
  a(i+1)=a(i+1)+a(i);
  endfor
figure(3);
stairs(a,color='r');
set(gca, 'FontSize', 14)
title("Poisson process counting ");
xlabel("Seconds");
ylabel("N(t)");
disp ("for 200 events:")
disp ("lamda approx.=");
disp (evnts/a(evnts));

#300
lamda=5;
evnts=300;
a=exprnd(1/lamda,1,evnts);
for i=1:(evnts-1)
  a(i+1)=a(i+1)+a(i);
  endfor
figure(4);
stairs(a,color='r');
set(gca, 'FontSize', 14)
title("Poisson process counting ");
xlabel("Seconds");
ylabel("N(t)");
disp ("for 300 events:")
disp ("lamda approx.=");
disp (evnts/a(evnts));

#500
lamda=5;
evnts=500;
a=exprnd(1/lamda,1,evnts);
for i=1:(evnts-1)
  a(i+1)=a(i+1)+a(i);
  endfor
figure(5);
stairs(a,color='r');
set(gca, 'FontSize', 14)
title("Poisson process counting ");
xlabel("Seconds");
ylabel("N(t)");
disp ("for 500 events:")
disp ("lamda approx.=");
disp (evnts/a(evnts));

#1000
lamda=5;
evnts=1000;
a=exprnd(1/lamda,1,evnts);
for i=1:(evnts-1)
  a(i+1)=a(i+1)+a(i);
  endfor
figure(6);
stairs(a,color='r');
set(gca, 'FontSize', 14)
title("Poisson process counting ");
xlabel("Seconds");
ylabel("N(t)");
disp ("for 1000 events:")
disp ("lamda approx.=");
disp (evnts/a(evnts));

#10000
lamda=5;
evnts=10000;
a=exprnd(1/lamda,1,evnts);
for i=1:(evnts-1)
  a(i+1)=a(i+1)+a(i);
  endfor
figure(7);
stairs(a,color='r');
set(gca, 'FontSize', 14)
title("Poisson process counting ");
xlabel("Seconds");
ylabel("N(t)");
disp ("for 10000 events:")
disp ("lamda approx.=");
disp (evnts/a(evnts));
