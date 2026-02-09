t = -20:20;
x = 1.*(t>=0 & t<=2);
h = (0.5).*(t>=0 & t<=2) + 1.*(t>=4 & t<= 6);
u = conv(x, h);
disp(u);

a = -10; b = -10;
p = a:a+(length(x)-1);
subplot(3, 1, 1), stem(p, x); grid on
xlabel('Time'), ylabel('Amplitude');
title('Input: x(n)')

q = b:b+(length(h)-1);
subplot(3, 1, 2), stem(q, h); grid on
xlabel('Time'), ylabel('Amplitude');clc
title('Input: h(n)')

n = -length(h)+1:length(u)-length(h);
subplot(3, 1, 3), stem(n, u); grid on; disp(u)
xlabel('Time'), ylabel('Amplitude');
title('Output: u(n)')