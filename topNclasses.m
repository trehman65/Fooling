function [topNx,topNy] = topNclasses(labels,N)


x=unique(labels);
y = zeros(size(x));

for i = 1:length(x)
    y(i) = sum(labels==x(i));
end

[y index]=sort(y,'descend');
x=x(index);

topNx=x(1:N);
topNy=y(1:N);


end