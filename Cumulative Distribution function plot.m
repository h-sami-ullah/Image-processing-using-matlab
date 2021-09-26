J=[0 0 4 7 4;0 4 7 0 4;4 4 4 4 4;0 7 0 4 0;0 4 4 7 0];
k=0;
Image=J;
his=zeros(8,1);
cdf=zeros(8,1);
 
 
%iterate through the intensity values
for g=0:7
his(g+1) = sum(Image(:)==g);%Computing histogram

end)
allsum=sum(his); %Computing the window size(the pic size)

for g=0:7
hissum=0;    
    for i=1:g+1
        hissum=his(i)+hissum; 
    end
    cdf(g+1)=hissum/allsum;
end
plot(cdf)
