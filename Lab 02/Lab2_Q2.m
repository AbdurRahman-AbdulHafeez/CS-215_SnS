% a

% n = -10:10
% u_5 = (ones(size(n))) .* (n >= -5)
% u_6 = (ones(size(n))) .* (n >= 6)
% u_4 = (ones(size(n))) .* (n >= 4)
% u_10 = (ones(size(n))) .* (n >= 10)
% d_n = (ones(size(n))) .* (n == 0)
% 
% t1 = (n .^ 2) .* (u_5 - u_6)
% t2 = 10 .* d_n
% t3 = 20 .* ((0.5 .^ n)) .* (u_4 - u_10)
% 
% x_n = t1 + t2 + t3
% 
% stem(n, x_n, 'g-'); grid on
% title('Q2 (a)')
% xlabel('n')
% ylabel('x(n)')

% b

% n = -10:10
% u_5 = (ones(size(n))) .* (n >= 5)
% u_6 = (ones(size(n))) .* (n >= -6)
% u_4 = (ones(size(n))) .* (n >= -4)
% d_5 = (ones(size(n))) .* (n == 5)
% 
% t1 = ((0.2 .^ n)) .* (u_5 + u_6) .* d_5
% t2 =  20 .* ((0.5 .^ n)) .* (u_4)
% 
% x_n = t1 + t2 
% 
% stem(n, x_n, 'b-'); grid on
% title('Q2 (b)')
% xlabel('n')
% ylabel('x(n)')
% 

