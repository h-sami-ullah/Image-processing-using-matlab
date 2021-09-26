J=[0 0 4 7 4;0 4 7 0 4;4 4 4 4 4;0 7 0 4 0;0 4 4 7 0];
%image=imread(I);
%Image=rgb2gray(image);
Image=J;
[R,C]=size(Image);
imshow(Image)
%allocate the histogram
h=zeros(8,1);
%iterate through the intensity values
for g=0:7
h(g+1) = sum(Image(:)==g);% accumulate (finding values equals to g and count them afterwards
% save them in the corresponding enteries 
end