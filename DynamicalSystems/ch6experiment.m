%Experiment, Chapter 6:  Transition to Chaos
%
%  This script records the asymptotic behavior of the orbit of 0 under the
%  quadratic map for 1000 values of c between -2 and 1/4.  
%
%  To find the asymptotic behavior, we iterate 500 times before recording
%  the orbit, then we'll record the next 200 points.  Altogether, we will
%  construct an array that is 1000 x 200.

A=zeros(1000,200);
c=linspace(-2,1/4,1000)';
x=0;
for j=1:500
    x=x.^2+c;  %Remember, this is an assignment, not equality
end

%Now record and plot
for j=1:200
    A(:,j)=x.^2+c;
    x=A(:,j);
end
plot(A,'.');
clear x j c
pause
