% Contents: Control Systems 344 Practical 1 memo
% Author: CE van Daalen
% Date: 21 July 2017

% Instructions: run this m-file before simulating the accompanying model Prac1_model.slx
% Change the values of the variables to appropriate values for each question

l = 1; % pendulum length in m
m = 1; % pendulum mass in kg
g = 9.81; % gravitational constant
u_0 = 7; % equilibrium input in N.m^2 (0 for Questions 6-7; 7 for Question 8)
theta_0 = asin(u_0/(m*l*g)); % corresponding equilibrium angle in rad
y_0 = l*sin(theta_0); % corresponding equilibrium output in m

A = [0, 1; -g/l*cos(theta_0), 0]; % A matrix for linearised system
b = [0; 1/(m*l^2)]; % b vector for linearised system
c = [l*cos(theta_0), 0]; % c vector for linearised system
d = 0; % d scalar for linearised system
