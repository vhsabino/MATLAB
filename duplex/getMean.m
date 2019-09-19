function [dataM] = getMean(data)
start = 1;
j = 1;
for i = 1:(length(data)-1)
    if data(i+1,1) ~= data(i,1)
        subArray = data((start:i),:);
        dataM(j,:) = mean(subArray);
        start = i + 1;
        j = j + 1;   
    end         
end