
x=0.2;
c=-0.5;

%f=@(x) 0.4*x*(1-x);
%f=@(x) x*(1-x);
f=@(x) x*x - 0.75;

for k=1:5000000000000
    xnew=f(x);
    if abs(xnew-c)<10^(-5)
        fprintf('Number of iterations: %d\n',k);
        break
    end
    x=xnew;
end


