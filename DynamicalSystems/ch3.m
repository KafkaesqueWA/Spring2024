X(1)=3/8;
for k=1:70
  X(k+1)=doubling(X(k));
end
plot(X,'*')
pause
