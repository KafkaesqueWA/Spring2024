function Y=iterates(fcn,x0,N)
 
% fcn is the name of the function, x0 is the starting
% value, N is the number of iterates
 
Y=[x0];
x=x0;
 for i=1:N
        y=feval(fcn,x);
        Y=[Y y];
        x=y;
end

