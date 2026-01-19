% Plotting CT Sinusoid
t = 0:0.005:1;
xt = sin(20 * pi * t);     % F = 10Hz

subplot(3, 3, 1), plot(t, xt);
title('Original x(t)'), xlabel('t'), ylabel('sin(20\pit)');
axis([0 1 -1 1]); grid on

subplot(3, 3, 2), plot(t, xt);
title('Original x(t)'), xlabel('t'), ylabel('sin(20\pit)');
axis([0 1 -1 1]); grid on

subplot(3, 3, 3), plot(t, xt);
title('Original x(t)'), xlabel('t'), ylabel('sin(20\pit)');
axis([0 1 -1 1]); grid on

% Plotting DT Sinusoids
% Fs1 = 100; Fs2 = 20; Fs3 = 10;
n1 = 0:0.01:1; n2 = 0:0.05:1; n3 = 0:0.1:1;
x1n = sin(20 * pi * n1);
x2n = sin(20 * pi * n2);
x3n = sin(20 * pi * n3);

subplot(3, 3, 4), stem(n1, x1n);
title('Sampled x1(n)'), xlabel('n'), ylabel('sin(20\pin1)');
axis([0 1 -1 1]); grid on

subplot(3, 3, 5), stem(n2, x2n);
title('Sampled x2(n)'), xlabel('n'), ylabel('sin(20\pin2)');
axis([0 1 -1 1]); grid on

subplot(3, 3, 6), stem(n3, x3n);
title('Sampled x3(n)'), xlabel('n'), ylabel('sin(20\pin3)');
axis([0 1 -1 1]); grid on

% Reconstructingthe signals using Spline Interpolation
y1 = spline(n1, x1n, t);
y2 = spline(n2, x2n, t);
y3 = spline(n3, x3n, t);

% Plotting the Reconstructed Signals
subplot(3, 3, 7), plot(t, y1);
title('Reconstructed y1(t)'), xlabel('t'), ylabel('sin(20\pit)');
axis([0 1 -1 1]); grid on

subplot(3, 3, 8), plot(t, y2);
title('Reconstructed y2(t)'), xlabel('t'), ylabel('sin(20\pit)');
axis([0 1 -1 1]); grid on

subplot(3, 3, 9), plot(t, y3);
title('Reconstructed y3(t)'), xlabel('t'), ylabel('sin(20\pit)');
axis([0 1 -1 1]); grid on
