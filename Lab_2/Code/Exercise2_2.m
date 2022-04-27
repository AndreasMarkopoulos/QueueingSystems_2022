clc;
close all;
clear all;

pkg load queueing;

lambda = 5;
m = 5.0001 : 0.0001 : 10;
[U, R, Q, X, p0] = qsmm1 (lambda, m);

figure(1);
hold on;
plot(m,U,"b","linewidth",1.2);
title("Διάγραμμα βαθμού χρησιμοποίησης - ρυθμού εξυπηρέτησης.");
xlabel("Ρυθμός Εξυπηρέτησης (μ)");
ylabel("Βαθμός χρησιμοποίησης");
set(gca,"fontsize", 12)

figure(2);
hold on;
plot(m,R,"b","linewidth",1.2);
title("Διάγραμμα Μέσου χρόνου καθυστέρησης - ρυθμού εξυπηρέτησης.");
xlabel("Ρυθμός Εξυπηρέτησης (μ)");
ylabel("Μέσος χρόνος καθυστέρησης");
set(gca,"fontsize", 12)
axis([5 10 0 50])

figure(3);
hold on;
plot(m,Q,"b","linewidth",1.2);
title("Διάγραμμα Μέσου αριθμού πελατών - ρυθμού εξυπηρέτησης.");
xlabel("Ρυθμός Εξυπηρέτησης (μ)");
ylabel("Μέσος αριθμός πελατών");
set(gca,"fontsize", 12)
axis([5 10 0 150])

figure(4);
hold on;
plot(m,X,"b","linewidth",1.2);
title("Διάγραμμα Ρυθμαπόδοσης (throughput) πελατών - ρυθμού εξυπηρέτησης.");
xlabel("Ρυθμός Εξυπηρέτησης (μ)");
ylabel("Ρυθμαπόδοση");
set(gca,"fontsize", 12)


