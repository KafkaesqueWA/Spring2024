%This script file shows how to create a cobweb diagram using the functions
%cobweb.m and iterates.m.  Here, we will create a cobweb diagram of the
%logistic function with a starting point of 0.2 and plot the first five
%points of the orbit on the interval (0,1).


%First, define the function. This is different than before, when we used a
%function file.  If the function is small, we don't need a separate file:
logistic=@(x) x + x.*x;

%Now call the cobweb function.  Notice the input arguments are
%  Function name, starting point, number of iterates,
%  interval endpoints:

cobweb(logistic, 0.1, 12, -2, 2, 'r');
cobweb(logistic, -1.3, 4, -2, 2, 'm');
cobweb(logistic, -0.9, 20, -2, 2, 'c');

pause
