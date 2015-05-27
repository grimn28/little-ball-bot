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

dt = 0.005; % sample time (s)
t = dt:dt:50-dt; % time scale

%% Open-loop system
% static system parameters
M = 0.5; % mass of ball [kg]
m = 0.2; % mass of body [kg]
l = 0.1; % length of end of body to c.o.g. [m]
b = 0.1; % coefficient of friction between wheels/ball/surface [N/m/s]
I = 0.005; % moment of inertia of body [kg-m^2]
g = 9.8; % gravitational acceleration [m/s/s]

% process noise standard deviation
w = [1e-3; % (m)
     1e-3; % (m/s)
     1e-3; % (m)
     1e-3; % (m/s)
     20e-3; % (rad)
     20e-3; % (rad/s)
     20e-3; % (rad)
     20e-3];% (rad/s)

% measurement noise variance
v = [5e-3; % (m)
     5e-3; % (m)
     40e-3; % (rad)
     40e-3];% (rad)

% state matrices
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
u = zeros(2,length(t)); % input (ux, uy)
x = NaN(8,length(t)); % state (x,dx,y,dy,theta,dtheta,phi,dphi)
y = NaN(4,length(t)); % output (x,y,theta,phi)

%% Observer
xh = NaN(8,length(t));
yh = NaN(4,length(t));

% initial conditions
xh(:,1) = [0;0;0;0;0;0;0;0];
yh(:,1) = [0;0;0;0];

%% LQR
Q = eye(8); % state weights (???)
R = eye(2); % input weights (???)
Klqr = dlqr(A,B,Q,R); % feedback gain

% initial conditions
x(:,1) = [0;0;0;0;0;0;0;0];
y(:,1) = [0;0;0;0];

%% PID
% reference (x-y position)
r = ones(2,length(t));

% gains
Kp = 0;
Ki = -0.0015;
Kd = 0;

% initial conditions
pid_m0 = zeros(2,1);
pid_m1 = zeros(2,1);
err_m0 = zeros(2,1);
err_m1 = zeros(2,1);
err_m2 = zeros(2,1);

%% Simulation
for k = 1:length(t)-1
    
    % output sample
    y(:,k) = C*x(:,k) + v.^2.*randn(4,1);
    
    % Kalman observer update
%     xh(:,k+1) = A*xh(:,k) + B*u(:,k);
%     P = A*P*A' + Qk;
%     ye = y(:,k) - C*xh(:,k);
    
    % PID controller update
    err_m2 = err_m1; % shift old error sample
    err_m1 = err_m0; % shift old error sample
    err_m0 = r(:,k) - y(1:2,k); % update new error sample

    pid_m1 = pid_m0; % shift old pid output
    pid_m0 = (1)       * pid_m1 + ... % update new pid output
             (Kp+Ki+Kd)* err_m0 + ...
             (-Kp-2*Kd)* err_m1 + ...
             (Kd)      * err_m2;
    
    % LQR + PID control update
    u(:,k) = pid_m0 - Klqr*x(:,k);
    
    % state update
    x(:,k+1) = A*x(:,k) + B*u(:,k) + w.^2.*randn(8,1);
    
end

% plot
figure(1)
plot(t,x,'o')
legend('x','dx','y','dy','th','dth','ph','dph')
title('state')
grid on













