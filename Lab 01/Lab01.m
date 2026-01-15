% Multiple Plots
t = [-2:0.002:2]
x = 3 * sin (pi * t)
y = 3 * cos (pi * t)
plot(t, y, 'r-', t, x, 'b--')
legend('Sine curve', 'Cosine curve')

% Sub Plots
x=10*sin(-2*pi*t)
y=10*cos(-2*pi*t)
u=10*sin(-5*pi*t)
v=10*cos(-5*pi*t)
t = [-2:0.002:2]
subplot(2, 2, 1), plot(t, x, 'r')
xlabel('t'), ylabel('x')
subplot(222), plot(t, y, 'g')
xlabel('t'), ylabel('y')
subplot(2, 2, 4), plot(t, u, 'b')
xlabel('t'), ylabel('u')
subplot(223), plot(t, v, 'k')
xlabel('t'), ylabel('v')