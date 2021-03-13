clear
clc
% vectors:
b = [3, 4, 5];
c = [3 4 5];
% this was row vectors
% this is column vector
d = [5;6;7;8];
% transpose:
dt = d';
% or
B = transpose(d);
% matrix size :
msize = size(d);
disp(msize);
% get column or row using the second arg (dimension)
% row
msize = size(d,1);
disp(msize);
% column
msize = size(d,2);
disp(msize);
% another form which doesn't matter for vectors
length(B)
% indexing from 1
B(1)
% indexing out of bound
% B(7) ERROR
q = B(2)
% matrix vision indexing
B(1,2)
% change element content
B(3) = 10
B(1,4) = 100
% change a value of the element that is index out of bounds
% extends the elements
B(6) = 50
% 5 6 10 100 0 50
B(1,9) = 2
% 5 6 10 100 0 50 0 0 2
% operator colony. creates vector.
c = 4:7
% no difference
c = [4:7]
% 1 unit of step and continues untill end (inclusive end but <=)
% it doensn't have to include the end
c = [4.2:7.3]
% 4.2 5.2 6.2 7.2
% can use more than 1 step
c = [4:2:10]
c = [4:1:10]
s = 2:-3:-11
% 2 -1 -4 -7 -10
% can contain nothing [] which 
% if you try 1:-2:10 nothing will be in the vector

% contain only bunch of things (subvector)
s([2 3 4])
% -1 -4 -7
% indices in vectors are natural numbers so you can use colony operation
s([2:4])
% -1 -4 -7
% in the first row checkout the elements 2:4 i mean return the matrix
s(1,[2:4])
% doesnt have to be in order
s(1, [2,4])
% you can append to an empty vector
v = [];
v = [v;1]
v = [v;1]
% 1 ; 1

% linspace(x1,x2) a vector with 100 elements
v = linspace(0,1)
% linspace(x1, x2, num) equal spaced vector elements with length num.
v = linspace(0,1,11)  
% you can use end in matlab
v(end)
v(end - 1)
a = 1:2;
b = 4:6;
% concat elements of two vectors
t = [a b]
% you can't concat them in columns here 
% since they're not in the same length
t = [a,b] % also acceptable

% these are both equivalent
xx = [1,2,3;4,5,6]
a = [1;4]; b = [2;5]; c = [3;6];
xx = [a b c]
% concats in the column
x = [a;b;c]
size(xx)
size(xx,1)
size(xx,2)
% row 2, col 2 and 3
xx(2,[2,3])
% if you want to have all of the elements in the second row
v = xx(2,:)
getsize = length(v);
xx(2,1:getsize) % it means give it the number
xx(2,1:end)
% all elements in the third column:
xx(:,3)
% all elements
xx(:,:)
% the same story happens to matrix index out of bounds
xx(5,4) = 10
% deleting
xx(3,:) = []
xx(:,[2,3]) = []
% creating a matrix of zeros
A = zeros(3,4)
% single arg will give you a square matrix
A = zeros(4) % ie a 4*4 matrix
% create a matrix of ones 
A = ones(5)
A = ones(2,3)
% identity matrix
I = eye(3)
% or it can change it a bit
I = eye(3,5)
I = eye(5,3)
% gives a matrix of random number in (0,1) with a uniform dist
rand % a 1*1 matrix
rand
rand(3) % a square matrix of 3*3
x = rand(3,5) % also possible to create a rectangular matrix
% gives a matrix of random numbers in normal dist(0,1)
x = randn(3,5)
% gives a matrix of random integers from 1:i with size m
m = 1;
i = 2;
randi(i,m)
randi(i,m)
% you can also give the min
randi([2,4],5)
% sum (matrix, dimension) returns the sum of each column if not vector
A = rand(4)
v = rand(1,4)
sum(A)
sum(v)
sum(A,1)
sum(A,2)
% average same as sum
mean(A)
mean(A,2)
% calculate variance. var(A, w, dim) you should give w = 0 
% and it is same as sum
var(A)
var(A,0,2)
var(A,0,'all')
% same as sum other functions
min(A)
min(A,[],2)
max(A)
max(A,[],2)
sort(A) % incremental for each column.
sort(A,2) % // for each row.
A
sort(A,'descend')
% you can + - * / ^ two matrices
clear
A = rand(3,2)
B = rand(3,2)
A-B
A+B
% A*B % this is not normal multplication this is matrix multiplication
% there would've been an ERROR if it was to be uncommented
A * B'
A' * B
% to use element wise scalar multiplication operation we use '.*'
A .* B
A .* 2
A * 2
A .^ 2
% A^2 ERROR because it is equvalent as A*A which has illegal sizes
A .^ B
rand(3) ^ 2 % this is valid because it is a square matrix
% also valid element wise
power(A,B)
plus(A,B)
minus(A,B)