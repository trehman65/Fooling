function [top5x,top5y] = top5classes(labels)


x=unique(labels);
y = zeros(size(x));

for i = 1:length(x)
    y(i) = sum(labels==x(i));
end

[y index]=sort(y,'descend');
x=x(index);

top5x=x(1:5);
top5y=y(1:5);


end