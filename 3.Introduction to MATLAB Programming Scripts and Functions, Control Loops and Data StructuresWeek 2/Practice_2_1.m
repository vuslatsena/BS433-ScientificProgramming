% Practice_2_1:
% Given an mxn matrix A and a 1xn vector v, subtract v from every row of A.
%% Initialization
A = ones(10,10);
B = ones(10,10);
v = 1:10;
[m, n] = size(A);
%% Implementation using loops:
for i=1:m
  A(i,:) = A(i,:) - v;
end

%% Implementation using only matrix operations
B = B - repmat(v, m, 1); %This version is cleaner and faster
