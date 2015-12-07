%function []=detect_single_mark(data_mat)
%data_mat = qrmeterdataside;
data_mat = qrmeterdata;
[rows,cols] = size(data_mat);
  m17 = 1;
  m20 = 1;
  m5 = 1;
  m6 = 1; 
for count=1:rows
  base = data_mat(count,1);

  for tt = 1:base;
      if data_mat(count,11*(tt-1)+2) == 17 
          mark17(m17,1:10) = data_mat(count,11*(tt-1)+3:11*tt+1);
          m17 = m17+1;
      end
      if data_mat(count,11*(tt-1)+2) == 20 
          mark20(m20,1:10) = data_mat(count,11*(tt-1)+3:11*tt+1);
          m20 = m20+1;
      end      
      
      if data_mat(count,11*(tt-1)+2) == 5 
          mark5(m5,1:10) = data_mat(count,11*(tt-1)+3:11*tt+1);
          m5 = m5+1;
      end
      if data_mat(count,11*(tt-1)+2) == 6
          mark6(m6,1:10) = data_mat(count,11*(tt-1)+3:11*tt+1);
          m6= m6+1;
      end          
  end

end