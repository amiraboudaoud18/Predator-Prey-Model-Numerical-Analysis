clear all;
close all;

% User Input
x0 = input("Enter the initial value of x (prey population): ");
y0 = input("Enter the initial value of y (predator population): ");  
t0 = input("Enter the initial time: ");
T = input("Enter the final time: ");
N = input("Enter the number of subdivisions: ");
a = input("Enter the intrinsic reproduction rate of prey (a): ");
b = input("Enter the mortality rate of prey due to predators encountered (b): ");
c = input("Enter the intrinsic mortality rate of predators (c): ");
d = input("Enter the reproduction rate of predators according to the prey encountered and eaten (d): ");
K = input("Enter the maximum capacity of the prey population (K): ");

% Step Size
h = (T - t0) / N;
fprintf('The step size h is: %.4f\n\n', h); 

% Time vector
t = t0:h:T;

% Preallocate arrays for efficiency
x_vals = zeros(1, N+1);
y_vals = zeros(1, N+1);
x_vals(1) = x0;
y_vals(1) = y0;

% Euler's method for system with resource limitation
for i = 1:N
    x_vals(i+1) = x_vals(i) + h * (x_vals(i) * (a - (a * x_vals(i) / K) - b * y_vals(i)));
    y_vals(i+1) = y_vals(i) + h * (y_vals(i) * (d * x_vals(i) - c));
end

% Plot results
figure;

% Population Dynamics over Time
subplot(2, 1, 1);
plot(t, x_vals, 'r', t, y_vals, 'b');
title('Population Dynamics with Resource Limitation');
xlabel('Time');
ylabel('Population Size');
legend('Prey', 'Predator');

% Predator-Prey Phase Plot
subplot(2, 1, 2);
plot(x_vals, y_vals);
title('Predator-Prey Phase Plot with Resource Limitation');
xlabel('Prey Population');
ylabel('Predator Population');