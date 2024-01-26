function y=doubling(x)
%Doubling function from Devaney's book

idx=length(x);
for j=1:idx
    if x(j)>=0 & x(j)<1/2
        y(j)=2*x(j);
    elseif x(j)>=1/2 & x(j)<1
        y(j)=2*x(j)-1;
    else
        y(j)=NaN;
    end
end
