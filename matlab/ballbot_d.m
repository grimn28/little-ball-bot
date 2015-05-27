%% Little Ball Bot
% This script models the little ball bot.  The robot
% balances on three omni-wheels on top of a ball, and
% regulates its upright orientation while controlling
% its position on the surface (X-Y plane).
% The robot used three motors to drive the omni-wheels
% (effectively having control of the ball's acceleration
% in the X-Y plane).  It has an IMU which provides
% angular measurement, as well as motor encoders which
% provide X-Y position measurement.

clear

%% Describe open-loop system
% define static system parameters
M = 0.5; % mass of ball [kg]
m = 0.2; % mass of body [kg]
l = 0.1; % length of end of body to c.o.g. [m]
b = 0.1; % coefficient of friction between wheels/ball/surface [N/m/s]
I = 0.005; % moment of inertia of body [kg-m^2]
g = 9.8; % gravitational acceleration [m/s/s]

dt = 0.005; % sample time (s)

w = 0.05; % process noise variance
v = 0.01; % measurement noise variance

% define state matrices
%  states: x, dx, y, dy, theta, dtheta, phi, dphi
%  inputs: ux, uy
%  outputs: theta, phi

q = (M+m)*(I+m*l^2) - (m*l)^2; % common denominator

A = [1, dt-0.5*dt^2*b*(I+m*l^2)/q, 0, 0, -0.5*dt^2*(m*l)^2*g/q, 0, 0, 0;
    0, 1-dt*b*(I+m*l^2)/q, 0, 0, -dt*(m*l)^2*g/q, 0, 0, 0;
    0, 0, 1, dt-0.5*dt^2*b*(I+m*l^2)/q, 0, 0, -0.5*dt^2*(m*l)^2*g/q, 0;
    0, 0, 0, 1-dt*b*(I+m*l^2)/q, 0, 0, -dt*(m*l)^2*g/q, 0;
    0, 0.5*dt^2*m*l*b/q, 0, 0, 1+0.5*dt^2*(M+m)*m*g*l/q, dt, 0, 0;
    0, dt*m*l*b/q, 0, 0, dt*(M+m)*m*g*l/q, 1, 0, 0;
    0, 0, 0, 0.5*dt^2*m*l*b/q, 0, 0, 1+0.5*dt^2*(M+m)*m*g*l/q, dt;
    0, 0, 0, dt*m*l*b/q, 0, 0, dt*(M+m)*m*g*l/q, 1];

B = [0.5*dt^2*(I+m*l^2)/q, 0;
    dt*(I+m*l^2)/q, 0;
    0, 0.5*dt^2*(I+m*l^2)/q;
    0, dt*(I+m*l^2)/q;
    -0.5*dt^2*m*l/q, 0;
    -dt*m*l/q, 0;
    0, -0.5*dt^2*m*l/q;
    0, -dt*m*l/q];

C = [1 0 0 0 0 0 0 0;
    0 0 1 0 0 0 0 0;
    0 0 0 0 1 0 0 0;
    0 0 0 0 0 0 1 0];

% variables
t = dt:dt:50-dt; % time scale
x = NaN(8,length(t)); % state
y = NaN(4,length(t)); % output

% control inputs
u = zeros(2,length(t)); % input (x-y acceleration)
r = ones(2,length(t)); % reference (x-y position)


%% LQR
Q = eye(8); % state weights (???)
R = eye(2); % input weights (???)
Klqr = dlqr(A,B,Q,R); % feedback gain

% initial conditions
x(:,1) = [0;0;0;0;0;0;0;0];
y(:,1) = [0;0;0;0];

%% PID
Kp = 0;
Ki = -0.002;
Kd = 0;

% initial conditions
pid_m0 = zeros(2,1);
pid_m1 = zeros(2,1);
err_m0 = zeros(2,1);
err_m1 = zeros(2,1);
err_m2 = zeros(2,1);

%% simulate system
for k = 1:length(t)-1
    
    y(:,k) = C*x(:,k); % read output sample
    
    err_m2 = err_m1; % shift old error sample
    err_m1 = err_m0; % shift old error sample
    err_m0 = r(:,k) - y(1:2,k); % update new error sample

    pid_m1 = pid_m0; % shift old pid output
    pid_m0 = (1)       * pid_m1 + ... % update new pid output
             (Kp+Ki+Kd)* err_m0 + ...
             (-Kp-2*Kd)* err_m1 + ...
             (Kd)      * err_m2;
    
    u(:,k) = pid_m0 - Klqr*x(:,k); % update control input
    
    x(:,k+1) = A*x(:,k) + B*u(:,k); % update state
    
end

% plot
figure(1)
plot(t,x,'o')
legend('x','dx','y','dy','th','dth','ph','dph')
title('state')
grid on













