clear all
close all

x0 = input("enter the initial value of x");
y0 = input("enter the initial value of y");  
t0 =input("enter the initial time");
T =input("enter the final time");
N =input("enter the number of subdivisions");

a =input("enter the intrinsic reproduction rate of prey (a)");
b =input("enter the mortality rate of prey due to predators encountered (b)");
c =input("enter the intrinsic mortality rate of predators (c)");
d =input("enter the reproduction rate of predators according to the prey encountered and eaten (d)");

h=(T-t0)/N;
fprintf('The step size h is: %.4f\n\n', h); 
t = t0:h:T;

x_vals = x0;
y_vals = y0;
x_vals(1)= x0;
y_vals(1) = y0;

for i = 1:N
    x_vals(i+1) = x_vals(i) + h * x_vals(i) * (a - b * y_vals(i));   % Prey equation
    y_vals(i+1) = y_vals(i) + h * y_vals(i) * (d * x_vals(i) - c);   % Predator equation
end

% Print final results for x and y
fprintf('Final results at t = %.4f:\n', T);
fprintf('x (prey) = %.4f\n', x_vals(end));
fprintf('y (predators) = %.4f\n', y_vals(end));

% Plot the results
plot(t, x_vals, t, y_vals);
legend('x (prey)', 'y (predators)'); 
xlabel('t (time)');
ylabel('Population');
title('Solution of predator-prey system using Explicit Euler Method');












