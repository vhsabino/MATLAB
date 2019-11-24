x = x_fix;
y = y_fix;
j = 1;
for i = 1:(size(x)-1)
    if (x(i) > 1900)
        x(i) = x(i) - 62; 
        y(i) = y(i) + 59;
    end       
end
close all
figure;
plot(x,y);