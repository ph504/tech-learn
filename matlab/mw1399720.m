% clc
clear
close % closes the previous plots and figures.
%session 3 notes
x = [1,2,3];
y = [5, 10, 17];
plot(x,y)
grid
title('first plot')
x = 0:0.1:10; %init
y = sin(x); 
%^ matlab recognizes the functions 
%and applies the function to all 
%the elements in the array or matrix.
plot(x,y)
grid
%^puts some grid in the plot
xlabel("time")
ylabel('amplitude')
title('Sin wave')

x = 0:0.1:10; %init
y = sin(x);
z = cos(x);
w = sin(x+pi);
%if there are more functions to plot:
%
plot(x, y, x, z, x, w) % plots two diagrams in one figure.
grid

%solutions to save the figure.
%print screen
%in edit drop down copy figure. (in the new window of the figure.)
%save option ... with the postfix of .fig

%other stories :
% when you select the cursor and double click on the plot you can customize
% the plot
xlabel("time")
ylabel('amplitude')
title('Sin wave')
legend('Sin', 'Cos', 'sin x+pi', 'Location', 'south')


%hold off and hold down.
%third section

x = 0:0.1:10; %init
y = sin(x);
z = cos(x);
w = sin(x+pi);
%if there are more functions to plot:
%
plot(x, y)
plot(x, z)
plot(x, w)% overwrites the picture.
grid

figure(1) % all the following will stay in figure one.
plot(x,y)
hold on% keeps the figure and keeps the following too.
plot(x,z)
plot(x,w)
hold off %is the same as one line figure.
figure(2)
plot(x, y)
figure(3)
plot(x, z)
figure(4)
plot(x, w)% overwrites the picture.
grid
%if we want to have one figure but we have multiple plots in it.
% for that matter we use suplot
% the order is from northwest and north
figure(5)
subplot(2,2,1)%first row first column
plot(x,y)
grid
xlabel("time")
ylabel('amplitude1')
title('Sin wave')
subplot(2,2,2)%first row second column
plot(x,z)
%%subplot(2,2,3)% second row first column.
%if we don't want to have the same sized figure.
subplot(2,2,[3,4]) %or [2,4] makes it in one column.
plot(x,w)
grid
xlabel("time")
ylabel('amplitude2')
title('Sin wave with phase')
% legend('Sin', 'Cos', 'sin x+pi', 'Location', 'south')
% search for more stuff if you are interested in!


%=====================================================%
% conditional, logical, and boolean expressions
% to create a boolean expression the easy way is to 
5>2
5<2
boolean = 5>2 % logical and =1
k = 1
whos
% other logical expressionss
4==2*2
2==2
2==1
2~=1
2~=2
2>=2
2<=2
% =< or => are not acceptable
n = rand(1,5)
n2 = n>0.5 % gives you logical array of its elements being >5.
% we can also use true / false
k = false
k = true
kk = [true false true]
whos
% for knowing the type of the variable at certain times.
islogical(kk) % returns a logical variable
islogical(n)
% also see:
% iskeyword
% isfile
% isfloat
% isequal
% isletter
% isenum
% isnan
% isinteger
% ischar
% isreal

% this transforms number values to logical variables
aa = [1 2 -1 0]
bb = logical(aa)
% operations on booleans and boolean algebra
a = logical([1 1 0])
b = logical([1 0 1])
c = and(a,b) % element wise and
c = or(a,b)
c = not(a)
c = xor(a,b)
% you can also use the operators
a&b;
a|b;
~a;
% short circuits operators
a = logical(a);
b = logical(b);
a && b;
a || b;
and(a,b); % this gives you the result for each element
% there are times that the values for operators aren't available
% for example checking out of bounds with the vectors and matrices
a = 0;
a==0 & (a>-1);% calculates both expressions parallel wise
a~=0 & a>-1;  % again
% but you want to evaluate if the first expression is true first and then
% persue the evaluation of other expressions.
a~=0 && a>-1;
% this example of mine makes it more obvious
a = [1 2 3];
i = 4;
i<=3 && a(i); % there shouldn't be a problem here.


% clc
