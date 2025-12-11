% Rocket Populsion
% Plot the velocity of the rocket for the first 10 seconds for four values
% Define the given constants
m = 1000; % Kilograms
c = 500; % Newtons
v0 = 0; % m/s

% Solve the differential equations with ode45
for fi = 20000:20000:80000;
[t,v] = ode45(@(t,V) (fi-c*V)/m, [0 10], v0);
plot(t,v)
grid on
hold on
end 
xlabel("Time (s)")
ylabel("Velocity (m/s)")
legend('20kN Thrust','40kN Thrust','60kN Thrust','80kN Thrust', 'Location','Best')


% ylim([0 80000])
