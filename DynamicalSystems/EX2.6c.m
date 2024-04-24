% Random Iteration Algorithm - Q_c(z)

c=i; %Comes from Q_c(z)=z^2+c
%c=-0.84+0.17*i; %Try this one!

% Initialize a point in the complex plane:
z=complex(rand(), rand());

NumIts=100000;

Y=zeros(1,NumIts);
Y(1)=z;

for k=1:NumIts-1

   m=randi(2);
   if m==1
      Y(k+1)=sqrt(Y(k)-c);
   elseif m==2   
      Y(k+1)=-sqrt(Y(k)-c);
   end

end
plot(Y,'.');
axis equal;

pause
