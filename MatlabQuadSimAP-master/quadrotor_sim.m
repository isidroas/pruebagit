%-----------------------------------------------------------------------%
%                                                                       %
%   This script simulates quadrotor dynamics and implements a control   %                                %
%   algrotihm.                                                          %
%   Developed by: Wil Selby                                             %
%                                                                       %
%                                                                       %
%-----------------------------------------------------------------------%

% Add Paths
addpath utilities

%% Initialize Workspace
clear all;
close all;
clc;

global Quad;
global Gimbal;

%% Initialize the plot
init_plot;
GimbalIni;
plot_quad_model;


%% Initialize Variables
quad_variables;
quad_dynamics_nonlinear;   

%% Run The Simulation Loop
while Quad.t_plot(Quad.counter-1)< max(Quad.t_plot);    
    
    % Measure Parameters (for simulating sensor errors)
      sensor_meas;

    % Filter Measurements
%     Kalman_phi2;
%     Kalman_theta2;
%     Kalman_psi2;
%     Kalman_Z2;
%     Kalman_X2;
%     Kalman_Y2;
    
    % Implement Controller
    position_PID;
    attitude_PID;
    rate_PID;
    GimbalController;
    
    % Calculate Desired Motor Speeds
    quad_motor_speed;
    
    % Update Position With The Equations of Motion
    quad_dynamics_nonlinear;  
    GimbalDynamics;
    
    % Plot the Quadrotor's Position
    if(mod(Quad.counter,3)==0)
        plot_quad 
        GimbalPlot;
        
         campos([10 20 10])
         camtarget([1 0 1])
%         camroll(0);
        Quad.counter;
        drawnow
    end
    
    Quad.init = 1;  %Ends initialization after first simulation iteration
end

%% Plot Data
%plot_data
