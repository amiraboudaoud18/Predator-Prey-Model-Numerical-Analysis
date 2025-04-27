clear all
close all

% Parameters
t0 = 0;            
T = 8;                 
N = 500;               % Number of subdivisions
a = 3;                 % Intrinsic reproduction rate of prey
b = 0.5;               % Mortality rate of prey due to predators encountered
c = 4;                 % Intrinsic mortality rate of predators
d = 0.5;               % Reproduction rate of predators due to prey eaten

h = (T - t0) / N;
fprintf('The step size h is: %.6f\n\n', h);  
t = t0:h:T;  

initial_conditions = [
    2, 10; 
    10, 2;
    12, 12; 
    15,5; 
    5,15; 
];

colors = ['r', 'g', 'b', 'm','y'];  
figure;


for j = 1:size(initial_conditions, 1)
    x0 = initial_conditions(j, 1);
    y0 = initial_conditions(j, 2);
    

    x_vals(1) = x0;
    y_vals(1) = y0;
    

    for i = 1:N
         x_vals(i+1) = x_vals(i)*(1+a*h-h*b*y_vals(i));
         y_vals(i+1) = y_vals(i)*(1-c*h+d*h*x_vals(i));
    end
    
    % Plot results on the same graph (Prey vs Predators)
    plot(x_vals, y_vals, colors(j), 'DisplayName', sprintf('x0 = %.1f, y0 = %.1f', x0, y0));
    hold on;  
end

legend('show'); 
xlabel('Prey population (x)');
ylabel('Predator population (y)');
title('Predator-Prey Phase Plot for Different Initial Conditions for N = 500');
grid on;
