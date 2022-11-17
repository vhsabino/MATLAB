%% Parameters for BLDC Speed Control Example

% This example shows how to control the rotor speed in a BLDC based 
% electrical drive. An ideal torque source provides the load. The Control 
% subsystem uses a PI-based cascade control structure with an outer speed 
% control loop and an inner dc-link voltage control loop. The dc-link 
% voltage is adjusted through a DC-DC buck converter. The BLDC is fed by 
% a controlled three-phase inverter. The gate signals for the inverter 
% are obtained from hall signals. The simulation uses speed steps. The 
% Scopes subsystem contains scopes that allow you to see the simulation 
% results.

% Copyright 2017-2019 The MathWorks, Inc.

%% Machine Parameters
p    = 4;        % Number of pole pairs
Rs   = 0.1;      % Stator resistance per phase           [Ohm]
Ls   = 1e-4;     % Stator self-inductance per phase, Ls  [H]
Ms   = 1e-5;     % Stator mutual inductance, Ms          [H]
psim = 0.0175;   % Maximum permanent magnet flux linkage [Wb]
Jm   = 0.0005;   % Rotor inertia                         [Kg*m^2]

%% Control Parameters
Ts  = 5e-6;  % Fundamental sample time            [s]
Tsc = 1e-4;  % Sample time for inner control loop [s]
Vdc = 48;    % Maximum DC link voltage            [V]
Kpw = 0.05;   % Proportional gain speed controller
Kiw = 10;    % Integrator gain speed controller
Kpv = 0.3;   % Proportional gain voltage controller
Kiv = 1.5;   % Integrator gain voltage controller