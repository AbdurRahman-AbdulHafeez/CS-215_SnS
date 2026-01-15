%% Q1
t = -1:0.05:1;    

for n = 1:8
    x = sin(n*pi*t);     
    subplot(4,2,n), plot(t, x)
    grid on
    xlabel('t')
    ylabel('x')
end

%% Q2
x = 0:2
y1 = cos(x)
y2 = x
plot(x, y1,'r-', x, y2, 'k--')
legend("Cosine Curve", "Linear Curve")

%% Q3
 x = 0:0.1:10
 y = (sin(x)) ./ x
 u =  (1 ./ ((x-1).^2)) + x 
 v = (x.^2 + 1) ./ (x.^2 - 4)
 z = (((10 - x).^(1/3)) - 1) ./ ((4 - x.^2).^(1/2))
 subplot(2, 2, 1), plot(x, y, 'r-')
 title('y(x)');
 xlabel('x'), ylabel('y')
 subplot(2, 2, 2), plot(x, u, 'g-')
 title('u(x)')
 xlabel('x'), ylabel('u')
 subplot(2, 2, 3), plot(x, v, 'b-')
 title('v(x)')
 xlabel('x'), ylabel('v')
 subplot(2, 2, 4), plot(x, z, 'k-')
 title('z(x)')
 xlabel('x'), ylabel('z')

%% Q4 
% Unit Step Signal
n = -5:5
y = (ones(size(n))).*(n >= 0) 
stem(n, y, "filled")
title('Unit Step Signal y(n)')
xlabel('n'), ylabel('y')

% Unit Ramp Signal
z = n.*(n >= 0)
stem(n, z, "filled")
title('Unit Ramp Signal z(n)')
xlabel('n'), ylabel('z')

% Exponential Signal
n = 0:10
x = (2 * (0.25 .^ n)).*y
stem(n, x, "filled")
title('Exponential Signal x(n)')
xlabel('n'), ylabel('x')

%% Q5
t = 0:0.01:1
y1 = cos(2*pi*t)
y2 = cos((2*pi*t) + (pi/2))
y3 = cos((2*pi*t) - (pi/2))
y4 = sin(2*pi*t)
plot(t, y1,'g-', t, y2, 'k--', t, y3, 'b-.', t, y4, 'y.')
legend('y1(t)', 'y2(t)', 'y3(t)', 'y4(t)')
