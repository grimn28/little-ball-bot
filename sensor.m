clear;

% setup sensor serial port
S = serial('/dev/ttyACM0');
fopen(S);

try
	tic;

	% collect samples 
	N = 50;
	acc = NaN(3,N);
	gyr = NaN(3,N);
	temp = NaN(1,N);
	for i=1:N
		while (~S.BytesAvailable)
			% wait for data
		end
		if (S.BytesAvailable)
			% read data
			str = fscanf(S);
			data = cell2mat(textscan(str,'%d,%d,%d,%d,%d,%d,%d'));

			% unit-converted, uncalibrated data
			acc(:,i) = double(data(1:3)')/16384;
			temp(i) = double(data(4))/340 + 36.53;
			gyr(:,i) = double(data(5:7)')/131;

			% reassure user...
			fprintf('\rcalibrating... %3d/%d',i,N);
		end
	end


	% calculate means and variances
	u_a_x = mean(acc(1,:));
	v_a_x = var(acc(1,:));
	u_a_y = mean(acc(2,:));
	v_a_y = var(acc(2,:));
	u_a_z = mean(acc(3,:))-1;
	v_a_z = var(acc(3,:));

	u_g_x = mean(gyr(1,:));
	v_g_x = var(gyr(1,:));
	u_g_y = mean(gyr(2,:));
	v_g_y = var(gyr(2,:));
	u_g_z = mean(gyr(3,:));
	v_g_z = var(gyr(3,:));


	% plot the distributions
	figure(1);
	subplot(231);
	hist(acc(1,:));
	title(sprintf('(%2.3f,%2.3f)',u_a_x,v_a_x));
	subplot(232);
	hist(acc(2,:));
	title(sprintf('(%2.3f,%2.3f)',u_a_y,v_a_y));
	subplot(233);
	hist(acc(3,:));
	title(sprintf('(%2.3f,%2.3f)',u_a_z,v_a_z));
	subplot(234);
	hist(gyr(1,:));
	title(sprintf('(%2.3f,%2.3f)',u_g_x,v_g_x));
	subplot(235);
	hist(gyr(2,:));
	title(sprintf('(%2.3f,%2.3f)',u_g_y,v_g_y));
	subplot(236);
	hist(gyr(3,:));
	title(sprintf('(%2.3f,%2.3f)',u_g_z,v_g_z));


	% draw thing
	figure(2);
	px = [-1 1 1 -1];
	py = [-3 -3 3 3];
	pz = [0 0 0 0];
	ax = [-5 5 -5 5 -5 5];

	%table heading
	fprintf('\n\nsample  rho_A   phi_A   rho_G   phi_G   rho_C   phi_C   rho_k   phi_k   looptime\r\n');

	% calculate and display orientation
	N = 500;
	t = NaN(1,N);
	rho_a = NaN(1,N);
	phi_a = NaN(1,N);
	rho_g = NaN(1,N);
	phi_g = NaN(1,N);
	rho_c = NaN(1,N);
	phi_c = NaN(1,N);
	rho_k = NaN(1,N);
	phi_k = NaN(1,N);
	rho_a(1) = 0;
	phi_a(1) = 0;
	rho_g(1) = 0;
	phi_g(1) = 0;
	rho_c(1) = 0;
	phi_c(1) = 0;
	rho_k(1) = 0;
	phi_k(1) = 0;
	dt = 0.06;
	t(1) = dt;
	tau = 1/180;
	Px = v_g_x;
	Py = v_g_y;
	for i=2:N
		while (~S.BytesAvailable)
			% wait for data
		end
		if (S.BytesAvailable)
			% read in data
			str = fscanf(S);
			data = cell2mat(textscan(str,'%d,%d,%d,%d,%d,%d,%d'));

			% update loop time
			dt = toc;
			t(i) = t(i-1) + dt;
			tic;

			% calibrated values
			a = double(data(1:3)')/16384 - [u_a_x;u_a_y;u_a_z];
			g = double(data(5:7)')/131 - [u_g_x;u_g_y;u_g_z];

			% accel-based orientation
			rho_a(i) = atan2(a(1),sqrt(a(2)^2+a(3)^2))*180/pi;
			phi_a(i) = atan2(a(2),sqrt(a(1)^2+a(3)^2))*180/pi;

			% gryo-based orientation
			rho_g(i) = rho_g(i-1) + g(2)*dt;
			phi_g(i) = phi_g(i-1) + g(1)*dt;

			% complementary filter
			G = tau/(tau+dt);
			rho_c(i) = G*rho_g(i) + (1-G)*rho_a(i);
			phi_c(i) = G*phi_g(i) + (1-G)*phi_a(i);

			% kalman filter
			Px = Px + v_g_x;
			Kx = Px/(Px-v_a_x);
			rho_k(i) = rho_g(i) + Kx*(rho_a(i) - rho_g(i));
			Px = (1-Kx)*Px;

			Py = Py + v_g_y;
			Ky = Py/(Py-v_a_y);
			phi_k(i) = phi_g(i) + Ky*(phi_a(i) - phi_g(i));
			Py = (1-Ky)*Px;
		end

		% display orientation
		subplot(221);
		s1 = fill3(px,py,pz,'r');
		rotate(s1,[1 0 0],rho_a(i));
		rotate(s1,[0 1 0],phi_a(i));
		axis(ax);
		grid on;
		subplot(222);
		s2 = fill3(px,py,pz,'b');
		rotate(s2,[1 0 0],-rho_g(i));
		rotate(s2,[0 1 0],phi_g(i));
		axis(ax);
		grid on;
		subplot(223);
		s3 = fill3(px,py,pz,'g');
		rotate(s3,[1 0 0],-rho_c(i));
		rotate(s3,[0 1 0],-phi_c(i));
		axis(ax);
		grid on;
		subplot(224);
		s4 = fill3(px,py,pz,'m');
		rotate(s4,[1 0 0],-rho_k(i));
		rotate(s4,[0 1 0],-phi_k(i));
		axis(ax);
		grid on;
		drawnow;

		% update table
		fprintf('\r%-8d%-8.2f%-8.2f%-8.2f%-8.2f%-8.2f%-8.2f%-8.2f%-8.2f%-8.3f',...
		i,rho_a(i),phi_a(i),rho_g(i),phi_g(i),rho_c(i),phi_c(i),rho_k(i),phi_k(i),dt);

	end

	fprintf('\n\r');

	figure(3);
	subplot(211);
	plot(t,rho_a,t,rho_g,t,rho_c,t,rho_k);
	legend('accel','gyro','compl','kalman');
	title('X rotation');
	subplot(212);
	plot(t,phi_a,t,phi_g,t,phi_c,t,phi_k);
	legend('accel','gyro','compl','kalman');
	title('Y rotation');

	fclose(S);
	delete(S);
	clear S;

catch ME
		disp(ME.message);
		fclose(S);
		delete(S);
		clear S;
end


