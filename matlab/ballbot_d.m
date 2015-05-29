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

dt = 0.01; % sample time (s)
t = dt:dt:5-dt; % time scale

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
     1e-3; % (rad)
     1e-3; % (rad/s)
     1e-3; % (rad)
     1e-3];% (rad/s)

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
Vm = NaN(2,length(t)); % base speed command (Vmx, Vmy)

%% Observer
xh = NaN(8,length(t)); % estimated state (x,dx,y,dy,theta,dtheta,phi,dphi)
yh = NaN(4,length(t)); % estimated output (x,y,theta,phi)

% initial conditions
xh(:,1) = [0;0;0;0;0;0;0;0];
yh(:,1) = [0;0;0;0];
P = eye(8);

%% LQR
Q = eye(8); % state weights
R = eye(2); % input weights
Klqr = dlqr(A,B,Q,R); % feedback gain

% initial conditions
x(:,1) = [0;0;0;0;-pi/64;0;pi/32;0];
y(:,1) = [0;0;0;0];

%% PID
r = [ones(1,length(t)); 
	 -ones(1,length(t))];

Kp = 0;
Ki = 0;
Kd = 0;

% initial conditions
pid_m0 = zeros(2,1);
pid_m1 = zeros(2,1);
err_m0 = zeros(2,1);
err_m1 = zeros(2,1);
err_m2 = zeros(2,1);

%% Simulation
for k = 2:length(t)
    
    % state update
    x(:,k) = A*x(:,k-1) + B*u(:,k-1) + w.^2.*randn(8,1);
    
    % measurement sample
    y(:,k) = C*x(:,k) + v.^2.*randn(4,1);
    
    % Kalman observer update
    xh(:,k) = A*xh(:,k-1) + B*u(:,k-1);
    P = A*P*A' + diag(w.^2);
    S = C*P*C' + diag(v.^2);
    Kkal = P*C'*inv(S);
    xh(:,k) = xh(:,k) + Kkal*(y(:,k) - C*xh(:,k));
    yh(:,k) = C*xh(:,k);
    P = (eye(8)-Kkal*C)*P;
    
    % PID controller update
    err_m2 = err_m1; % shift old error sample
    err_m1 = err_m0; % shift old error sample
    err_m0 = r(:,k) - y(1:2,k); % update new error sample

    pid_m1 = pid_m0; % shift old pid output
    pid_m0 = (1)        * pid_m1 + ... % update new pid output
             (Kp+Ki+Kd) * err_m0 + ...
             (-Kp-2*Kd) * err_m1 + ...
             (Kd)       * err_m2;
    
    % LQR + PID control update
    u(:,k) = pid_m0 - Klqr*xh(:,k);

	% motor speed command
	Vm(:,k) = [(u(1,k) + (M+m)/dt*x(2,k-1) - (m*l/dt)*x(6,k) + (m*l/dt)*x(6,k-1))/((M+m)/dt);
			   (u(2,k) + (M+m)/dt*x(4,k-1) - (m*l/dt)*x(8,k) + (m*l/dt)*x(8,k-1))/((M+m)/dt)];
    
end

%% plot
figure(1)
clf
plot(t,y,'o')
hold on
plot(t,yh,'Linewidth',2)
legend('x','y','th','ph')
title('output')
grid on

figure(2)
clf
plot(t,Vm,'o')
title('ball speed')
grid on

%% animation
if 1
	figure(3)
	clf
	ax = axes('XLim',[-2 2],'YLim',[-2 2],'ZLim',[0 4]);
	xlabel('x')
	ylabel('y')
	view(3)
	grid on
	[sx,sy,sz] = sphere(20);
	[cx,cy,cz] = cylinder(0.3);
	hs = surface(.25*sx,.25*sy,.25*sz,'FaceColor','magenta');
	hc = surface(cx,cy,cz,'FaceColor','cyan');
	ts = hgtransform('Parent',ax);
	set(hs,'Parent',ts);
	tc = hgtransform('Parent',ax);
	set(hc,'Parent',tc);
	Rz = eye(4);
	Ts = Rz;
	for i = 1:length(t)
		Ts = makehgtform('translate',[x(1,i) x(3,i) .25]);
		Tc = makehgtform('translate',[x(1,i)+0.5*sin(x(5,i)) x(3,i)+0.5*sin(x(7,i)) .5],...
						 'yrotate',x(5,i),'xrotate',-x(7,i));
		set(ts,'Matrix',Ts)
		set(tc,'Matrix',Tc)
		drawnow
	end
end











