% % Aliasing Effect
% Plotting CT Sinusoid

t = -2:0.005:2;
x1t = cos(2 * pi * t);   % F1 = 1Hz
x2t = cos(6 * pi * t);   % F2 = 3Hz

subplot(3, 2, 1), plot(t,x1t);
title('Original x1(t)'), xlabel('t'), ylabel('cos2\pit');
axis([-2 2 -1 1]); grid on

subplot(3, 2, 2), plot(t,x2t);
title('Original x2(t)'), xlabel('t'), ylabel('cos6\pit');
axis([-2 2 -1 1]); grid on

% Plotting DT Sinusoid
% Fs = 2 samples/sec

Fs = 6;
n = -2:1/Fs:2;
x1n = cos(2 * pi * n);
x2n = cos(6 * pi * n);

subplot(3, 2, 3), stem(n,x1n);
title('Sampled x1(n)'), xlabel('n'), ylabel('cos2\pin');
axis([-2 2 -1 1]); grid on

subplot(3, 2, 4), stem(n,x2n);
title('Sampled x2(n)'), xlabel('n'), ylabel('cos6\pin');
axis([-2 2 -1 1]); grid on


% Reconstructingthe signalsusing Spline Interpolation
y1 = spline(n, x1n, t);
y2 = spline(n, x2n, t);

% Plotting the Reconstructed Signals
subplot(3, 2, 5), plot(t, y1);
title('Reconstructed y1(t)'), xlabel('n'), ylabel('cos2\pin');
axis([-2 2 -1 1]); grid on

subplot(3, 2, 6), plot(t, y2);
title('Reconstructed y2(t)'), xlabel('n'), ylabel('cos6\pin');
axis([-2 2 -1 1]); grid on
