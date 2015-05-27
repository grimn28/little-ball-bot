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
u = zeros(2,length(t)); % input
r = ones(2,length(t)); % reference

% initial conditions
x(:,1) = [0;0;0;0;pi/64;0;-pi/120;0];
y(:,1) = [0;0;0;0];
err = 0;
i_err = 0;

%% LQR
Q = eye(8);
R = 0.01*eye(2);
Klqr = dlqr(A,B,Q,R);

%% PID
Kp = 0;
Ki = -0.02;
Kd = 0;

%% simulate system
for k = 1:length(t)-1

	% state/LQR/PID update
	y(:,k) = C*x(:,k);
	d_err = r(:,k) - y(1:2,k) - err;
	err = r(:,k) - y(1:2,k);
	i_err = i_err + err;
	if k<=1
		u(:,k) = Kp*err - Klqr*x(:,k);
	else
		I = err + I;
		u(:,k) = Kp*err + Ki*i_err + Kd*d_err - Klqr*x(:,k);
	end
	x(:,k+1) = A*x(:,k) + B*u(:,k);

end

% plot
figure(1)
plot(t,x,'o')
legend('x','dx','y','dy','th','dth','ph','dph')
title('state')
grid on













