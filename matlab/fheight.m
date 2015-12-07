
count=1;
a =0;
for i = 0:pi/400:pi/6
  a(count) = 263/502/cos(i);
  aa(count) = 1.0/(cos(i)*cos(i));
    count = count + 1;    
end
[row,col] = size(a);
b = ones(row,col)*263/502;
c = a-b;
[hang,lie] =size(c);
 
for t=1:240
   for j= 1:lie
       m(t,j) = c(1,j)*t;    
   end
end