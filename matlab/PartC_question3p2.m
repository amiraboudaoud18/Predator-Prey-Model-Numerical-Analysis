clear all
close all


t0 = 0;                   
T = 4;                    
N = 20000;               
a = 10;                  
b = 3;                   
c = 7;                  
d = 1;                
eps = 0.001;

h = (T - t0) / N;
fprintf('The step size h is: %.8f\n\n', h);  
t = t0:h:T;    

x0 = 20;
y0 = 20;
x_vals_S1(1) = x0;
y_vals_S1(1) = y0;

x_vals_S2(1) = x0;
y_vals_S2(1) = y0;

% Apply Explicit Euler method for both systems (S1 and S2)
for i = 1:N
    % System (S1)
    x_vals_S1(i+1) = x_vals_S1(i) * (1 + a*h - h*b*y_vals_S1(i));
    y_vals_S1(i+1) = y_vals_S1(i) * (1 - c*h + d*h*x_vals_S1(i));

    % System (S2) with epsilon
    x_vals_S2(i+1) = x_vals_S2(i) * (1 + h*((a - eps) - b*y_vals_S2(i)));
    y_vals_S2(i+1) = y_vals_S2(i) * (1 + h*(d*x_vals_S2(i) - (c + eps)));
end

% Plot results on the same graph (Prey vs Predators)
figure;
plot(x_vals_S1, y_vals_S1, 'r', 'LineWidth', 1.5, 'DisplayName', 'System (S1)');  % S1 in red
hold on;
plot(x_vals_S2, y_vals_S2, 'b--', 'LineWidth', 1.5, 'DisplayName', 'System (S2)');  % S2 in blue dashed
hold off;

% Customize the plot
legend('show'); 
xlabel('Prey population (x)');
ylabel('Predator population (y)');
title('Predator-Prey Phase Plot for Systems (S1) and (S2)');
grid on;
