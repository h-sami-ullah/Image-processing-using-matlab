I=[1 0 3 6 4;1 5 6 0 5;4 3 4 5 3;2 7 1 3 2;1 3 5 6 1];
LUT=[0 0 0 4 4 4 7 7];
dim = size(I);
w=dim(2);
h=dim(1);
J=zeros(dim);
k=0;
for i=1:h
   for j=1:w
      r=I(i,j);
      if r<=2
          r=0;
      else if r>=2 && r<=5
              r=4;
          else if r>5
                  r=7;
              end
          end
      end
      J(i,j)=r;
   end
end
