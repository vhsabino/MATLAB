j = 1;
x1(1,1) = x(1,1);
y1(1,1) = y(1,1);
for i = 1:(length(x)-1)
 if ((x(i+1,1)-x(i,1) ~= 0) || (y(i+1,1)-y(i,1) ~= 0))
    j = j + 1; 
    x1(j,1) = x(i+1,1);
    y1(j,1) = y(i+1,1);
 end
end