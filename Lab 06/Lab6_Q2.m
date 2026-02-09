v1 = [0 0 0 0 4 4 4 4 0 0 0 0];
v2 = [0 0 0 1 2 3 4 3 2 1 0 0];
u = conv(v1, v2);
disp(u);

a = 0; b = 0;
p = a:a+(length(v1)-1);
subplot(3, 1, 1), stem(p, v1); grid on
title('Input: v1(n)')

q = b:b+(length(v2)-1);
subplot(3, 1, 2), stem(q, v2); grid on
title('Input: v2(n)')

n = a-length(v2)+1:length(u)+a+b-length(v2);
subplot(3, 1, 3), stem(n, u); grid on; disp(u)
title('Output: u(n)')

