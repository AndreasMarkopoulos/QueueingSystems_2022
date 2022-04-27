% system M/M/1/4
% when there are 3 clients in the system, the capability of the server doubles.

clc;
clear all;
close all;

pkg load queueing;

lambda = 5;
mu = 10;
states = [0, 1, 2, 3, 4]; % system with capacity 4 states
% the initial state of the system. The system is initially empty.
initial_state = [1, 0, 0, 0, 0];

% define the birth and death rates between the states of the system.
births_B = [lambda, lambda/2, lambda/3, lambda/4];
deaths_D = [mu, mu, mu, mu];

% get the transition matrix of the birth-death process
transition_matrix = ctmcbd(births_B, deaths_D);
display(transition_matrix)
% get the ergodic probabilities of the system
P = ctmc(transition_matrix);
format short g;
display(P)

% plot the ergodic probabilities (bar for bar chart)
figure(1);
bar(states, P, "r", 0.5);
xlabel("Κατάσταση")
ylabel("Πιθανότητα")
title("Eργοδικές πιθανότητες καταστάσεων");
set(gca,"fontsize", 12)

%client mean
k=[0,1, 2, 3, 4]
client_mean=sum(P .*k);
display(client_mean)

%P(blocking)
P_blocking=P(5);
display(P_blocking)

% transient probability of state 0 until convergence to ergodic probability. 
%Convergence takes place P0 and P differ by 0.01
for i=1:1:5
index = 0;
for T = 0 : 0.01 : 50
  index = index + 1;
  P0 = ctmc(transition_matrix, T, initial_state);
  Prob0(index) = P0(i);
  if P0 - P < 0.01
    break;
  endif
endfor

T = 0 : 0.01 : T;
figure(i+1);
hold on;
plot(T, Prob0, "linewidth", 1.4);
xlabel("Χρόνος (s)")
ylabel("Πιθανότητα")
title(sprintf('Κατάσταση %i', i-1));
axis([0 0.5])
set(gca,"fontsize", 12);
endfor

