% Parameters
k = 1; % Reaction rate constant (1/s)
V = 100; % Volume of the CSTR (L) and total volume for PFR (L)
Q = 10; % Volumetric flow rate (L/s)
C_A_in = 1; % Inlet concentration of A (mol/L)

%% CSTR Simulation

% Define the ODE for CSTR
ode_cstr = @(t, C_A) Q/V * (C_A_in - C_A) - k * C_A;

% Initial condition for CSTR
C_A0_cstr = 0; % Initial concentration of A in the reactor (mol/L)

% Time span for CSTR
tspan = [0 10]; % Simulate for 10 seconds

% Solve the ODE for CSTR
[t_cstr, C_A_cstr] = ode45(ode_cstr, tspan, C_A0_cstr);

%% PFR Simulation

% Volume span for PFR
V_span = linspace(0, V, 1000); % Volume from 0 to 100 L, with 1000 points

% Define the ODE for PFR
ode_pfr = @(V, C_A) -k / Q * C_A;

% Initial condition for PFR
C_A0_pfr = C_A_in; % Initial concentration of A in the reactor (mol/L)

% Solve the ODE for PFR
[V_pfr, C_A_pfr] = ode45(ode_pfr, V_span, C_A0_pfr);

%% Plot Results

% Plot CSTR results
figure;
subplot(2, 1, 1);
plot(t_cstr, C_A_cstr, 'LineWidth', 2);
xlabel('Time (s)');
ylabel('Concentration of A (mol/L)');
title('CSTR Simulation');
grid on;

% Plot PFR results
subplot(2, 1, 2);
plot(V_pfr, C_A_pfr, 'LineWidth', 2);
xlabel('Volume (L)');
ylabel('Concentration of A (mol/L)');
title('PFR Simulation');
grid on;

% Combined Plot
figure;
plot(t_cstr, C_A_cstr, 'LineWidth', 2, 'DisplayName', 'CSTR');
hold on;
plot(V_pfr / (Q / V), C_A_pfr, 'LineWidth', 2, 'DisplayName', 'PFR'); % Convert volume to equivalent time for comparison
xlabel('Time (s) / Volume (L)');
ylabel('Concentration of A (mol/L)');
title('Comparison of CSTR and PFR Simulations');
legend show;
grid on;
