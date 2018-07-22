
function []=runnetwork(imagepath,r,n)

image = imread(imagepath);

if r==1
    image=rotateImage(image, 30);
end

if n==1
   image=addNoise(image, 1);
end

thisLabel=classificationnetwork(image);

plotLabel(image, thisLabel)


end