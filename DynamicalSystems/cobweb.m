function cobweb(fcn,x0,N,xmin,xmax,c)
 
% fcn is the name of the function, x0 is the starting
% value, N is the number of iterates, xmin and xmax
% give the range of x-values to be plotted, and 
 
dx=(xmax-xmin)/1000;
x=xmin:dx:xmax;
y=feval(fcn,x);
 
plot(x,y,'b',[xmin xmax],[0 0],'k',[0 0],[min(y)-.1*abs(min(y)) max(y)],'k',[xmin xmax],[xmin xmax],'g');
hold on
Y=iterates(fcn,x0,N);
YY(1)=Y(1);

for i=1:N
    XX(2*i-1)=Y(i);
    XX(2*i)=Y(i);
    YY(2*i)=Y(i+1);
    YY(2*i+1)=Y(i+1);
end;
XX(2*N+1)=Y(N+1);
plot(XX,YY,c,x0,0,'r*');

