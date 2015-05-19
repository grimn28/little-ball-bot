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

w = 0.05; % process noise variance
v = 0.01; % measurement noise variance

% define state matrices
%  states: x, dx, y, dy, theta, dtheta, phi, dphi
%  inputs: ux, uy
%  outputs: theta, phi

q = (M+m)*(I+m*l^2) - (m*l)^2; % common denominator

A = [0 1 0 0 0 0 0 0;
	 0 -b*(I+m*l^2)/q 0 0 -(m*l)^2*g/q 0 0 0;
	 0 0 0 1 0 0 0 0;
	 0 0 0 -b*(I+m*l^2)/q 0 0 -(m*l)^2*g/q 0;
	 0 0 0 0 0 1 0 0;
	 0 m*l*b/q 0 0 (M+m)*m*g*l/q 0 0 0;
	 0 0 0 0 0 0 0 1;
	 0 0 0 m*l*b/q 0 0 (M+m)*m*g*l/q 0];

B = [0 0;
	 (I+m*l^2)/q 0;
	 0 0;
	 0 (I+m*l^2)/q;
	 0 0;
	 -m*l/q 0;
	 0 0;
	 0 -m*l/q];

C = [1 0 0 0 0 0 0 0;
	 0 0 1 0 0 0 0 0;
	 0 0 0 0 1 0 0 0;
	 0 0 0 0 0 0 1 0];

D = [0 0;
	 0 0;
	 0 0;
	 0 0];

% generate open-loop system model
SYS_bb = ss(A,B,C,D,...
	'inputname',{'Ux','Uy'},...
	'outputname',{'x','y','theta','phi'},...
	'statename',{'x','dx','y','dy','theta','dtheta','phi','dphi'});

% check stability, controllability, observability
eigens = eig(A); % eigenvalues - any positives mean unstable
controllable = rank(ctrb(A,B))==length(A);
observable = rank(obsv(A,C))==length(A);


%% Design Kalman estimator
Qe = w^2;
Re = v^2;
%[Ke,L,P,M,Z] = kalman(SYS_bb,Qe,Re);


%% Design feedback regulator
% define LQR parameters
Qr = eye(8);
Rr = eye(2);

% generate feedack gain
Kr = lqr(SYS_bb,Qr,Rr);

% define closed-loop system
Ac = (A-B*Kr);
Bc = B;
Cc = C;
Dc = D;

SYS_lqr = ss(Ac,Bc,Cc,Dc,...
	'inputname',{'Ux','Uy'},...
	'outputname',{'x','y','theta','phi'},...
	'statename',{'x','dx','y','dy','theta','dtheta','phi','dphi'});


%% Simulate closed-loop system
% time response
dt = 0.001;
t = 0:dt:10-dt;
u = zeros(2,length(t));
x0 = [0; 0; 0; 0; pi/32; 0; pi/24; 0];

[y,t,x] = lsim(SYS_lqr,u,t,x0);

figure(1)
clf
plot(t,y)
legend('x','y','theta','phi')










