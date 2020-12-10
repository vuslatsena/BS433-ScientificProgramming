% Practice_2_3:
% Given a 1xn vector v, create a vector w of the same size
% containing all zeros, sum up every two consecutive terms of v
% and then write into w
%% Initialization
v = randi([1,100],1,100);
%randi: Uniformly distributed pseudorandom integers
[m,n] = size(v);
w = zeros(m,n);
u = zeros(m,n);

%% Implementation using loops
for i = 1 :n % describe the 1 x n vector
    if i == 1
        w(i) = v(i);
    else
        w(i) = v(i-1) + v(i);
    end
end

%% Implementation using only vector operations
% This version is cleaner and faster
u = [0 v(1:end-1)] + v;     

if isequal(w,u)
    disp('u and w are equal')
end
