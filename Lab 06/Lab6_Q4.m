t = -20:20;
a = exp(-t.^2);
b = t.*(t >= 0);
u = conv(a, b);

subplot(3, 1, 1), stem(t, a); grid on
title('Guassian Curve')

subplot(3, 1, 2), stem(t, b); grid on
title('Unit Ramp Siggnal')

subplot(3, 1, 3), stem(u); grid on
title('Convolution Output')