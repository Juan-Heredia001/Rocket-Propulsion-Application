% Rocket Populsion
% Plot the velocity of the rocket for the first 10 seconds for four values
% Define the given constants
m = 1000; % Kilograms
c = 500; % Newtons
v0 = 0; % m/s

% Solve the differential equations with ode45
for fi = 20000:20000:80000;
[t,V] = ode45(@(t,V) (fi-c*V)/m, [0 10], v0);
plot(t,V)
grid on
hold on
end 
legend('20,000N Thrust','40,000N Thrust','60,000N Thrust','80,000N Thrust', 'Location','Best')


% ylim([0 80000])
