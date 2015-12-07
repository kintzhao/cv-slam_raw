function []= fmotionModel(miu)
data_mat = miu;
[rows,cols] = size(data_mat); 
figure(100);
axis equal;
title('r: odom   b:predict');
plot(data_mat(1,1),data_mat(1,2),'+k','linewidth',2);hold on;
plot(data_mat(1,4),data_mat(1,5),'+g','linewidth',2);hold on;
for count=1:10:rows
   draw_robot(data_mat(count,1),data_mat(count,2),data_mat(count,3),'r');
   draw_robot(data_mat(count,4),data_mat(count,5),data_mat(count,6),'b');
   erro(count,1:3) = data_mat(count,1:3) -data_mat(count,4:6) ;
end

plot(data_mat(end,1),data_mat(end,2),'*k','linewidth',2);hold on;
plot(data_mat(end,4),data_mat(end,5),'*g','linewidth',2);hold on;

length1 = sqrt((data_mat(end,1) - data_mat(1,1))^2 + (data_mat(end,2) - data_mat(1,2))^2 )
length2 = sqrt((data_mat(end,4) - data_mat(1,4))^2 + (data_mat(end,5) - data_mat(1,5))^2 )

figure(200);
plot(erro(:,1:2),'.');

figure(300);
plot(erro(:,1),erro(:,2),'.');