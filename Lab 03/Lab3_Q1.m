% Plotting CT Sinusoid
t = 0:0.005:5;
x1t = cos(2 * pi * t);    % F1 = 1Hz
x2t = cos(14 * pi * t);   % F2 = 7Hz

subplot(3, 2, 1), plot(t,x1t);
title('Original x1(t)'), xlabel('t'), ylabel('cos(2\pit)');
axis([0 5 -1 1]); grid on

subplot(3, 2, 2), plot(t,x2t);
title('Original x2(t)'), xlabel('t'), ylabel('cos(14\pit)');
axis([0 5 -1 1]); grid on

% Plotting DT Sinusoid
% Fs = 3 samples/sec

Fs = 14;
n = 0:1/Fs:5;
x1n = cos(2 * pi * n);
x2n = cos(14 * pi * n);

subplot(3, 2, 3), stem(n, x1n);
title('Sampled x1(n)'), xlabel('n'), ylabel('cos(2\pin)');
axis([0 5 -1 1]); grid on

subplot(3, 2, 4), stem(n, x2n);
title('Sampled x2(n)'), xlabel('n'), ylabel('cos(14\pin)');
axis([0 5 -1 1]); grid on

% Reconstructingthe signals using Spline Interpolation
y1 = spline(n, x1n, t);
y2 = spline(n, x2n, t);

% Plotting the Reconstructed Signals
subplot(3, 2, 5), plot(t, y1);
title('Reconstructed y1(t)'), xlabel('t'), ylabel('cos(2\pit)');
axis([0 5 -1 1]); grid on

subplot(3, 2, 6), plot(t, y2);
title('Reconstructed y2(t)'), xlabel('t'), ylabel('cos(14\pit)');
axis([0 5 -1 1]); grid on