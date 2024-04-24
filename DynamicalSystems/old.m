clear

c = -1-2i;

t=linspace(-pi,pi,500);
D=exp(i*t);

for k=1:5;

    D=D.^2+c;
    time=exp(-abs(D));
    
end

colormap jet
pcolor(time);
shading flat;

pause
