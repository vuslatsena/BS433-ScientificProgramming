% Practice_2_2:
% Given an mxn matrix A, create a matrix B of the same size
% containing all zeros, and then copy into B the elements of A that
% are greater than zero

%% Initialization
A = randi([-10,10],10,10);
[m, n] = size(A);
B = zeros(m, n);
C = zeros(m, n);
D = zeros(m, n);

%% Implementation using loops:
for i=1:m
  for j=1:n
    if A(i,j)>0
      B(i,j) = A(i,j);
    end
  end
end

%% Implementation using only matrix operations v1
ind = find(A > 0);  % Find indices of positive elements of A
C(ind) = A(ind);    % Copies into C only the elements of A that are > 0

%% Implementation using only matrix operations v2
D(A>0) = A(A>0);    % Copies into D only the elements of A that are > 0

if isequal(B,C,D)
    disp('B, C and D are equal')
end