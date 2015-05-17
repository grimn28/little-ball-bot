%% Little Ball Bot

clear

%% Describe open-loop system
% define static system parameters
M = 0.5;
m = 0.2;
l = 0.1;
b = 0.1;
I = 0.005;
g = 9.8;

w = 0.05*ones(1,8); % process noise
v = 0.01*ones(1,2); % sensor noise

% define common denominator
q = (M+m)*(I+m*l^2) - (m*l)^2;

% define state matrices
%  states: x, dx, y, dy, theta, dtheta, phi, dphi
%  inputs: ux, uy
%  outputs: theta, phi
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

C = [0 0 0 0 1 0 0 0;
	 0 0 0 0 0 0 1 0];

D = [0 0;
	 0 0];

% check stability, controllability, observability
eigens = eig(A);
controllable = rank(ctrb(A,B))==length(A);
observable = rank(obsv(A,C))==length(A);

% generate system model
SYS_bb = ss(A,B,C,D,...
	'inputname',{'Ux','Uy'},...
	'outputname',{'th_x','th_y'},...
	'statename',{'x','dx','y','dy','theta','dtheta','phi','dphi'});


%% Design feedback controller
% define LQR parameters
Q = eye(8);
R = eye(2);

% generate feedack gain
K = lqr(SYS_bb,Q,R);

% define closed-loop system
Ac = (A-B*K);
Bc = B;
Cc = C;
Dc = D;

SYS_lqr = ss(Ac,Bc,Cc,Dc,...
	'inputname',{'Ux','Uy'},...
	'outputname',{'th_x','th_y'},...
	'statename',{'x','dx','y','dy','theta','dtheta','phi','dphi'});


%% Simulate closed-loop system
% time response
dt = 0.001;
t = 0:dt:10-dt;
u = zeros(2,length(t));
x0 = [0; 0; 0; 0; pi/32; 0; pi/32; 0];

[y,t,x] = lsim(SYS_lqr,u,t,x0);

figure(1)
subplot(211)
plot(t,x(:,1),t,x(:,2));
legend('x','y');
subplot(212)
plot(t,y)
legend('theta','phi')










