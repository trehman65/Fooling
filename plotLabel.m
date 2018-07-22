function []=plotLabel(image, label)


% Show the image and classification result
figure
imshow(image)
text(10, 20, char(label), 'Color', 'red' )

end