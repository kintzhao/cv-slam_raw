%function []=fdisplaymiu(miu,per_mark_num)
%  miu 为采集的状态量
%  per_mark_num   每个landmark 提取的点的个数
%  
%%
function []=fdisplaymiu(miu,per_mark_num)
% per_mark_num =5;
[hang,lie] = size(miu);
miu2=miu;
% for i=1:hang
%     for j =1:lie
%         if isnan(miu2(i,j))
%             miu2(i,j)=0;
% %             miu2(i,j:end) = [ ];
%             break;
%         end
%     end
% end
color=['r.','g.','b.','y.','k.'];
[hang,lie]=size(miu2);
base=(lie-3)/(per_mark_num*2);
figure(101);axis equal;plot(miu2(1:hang,1),miu2(1:hang,2),'k+') ;hold on    %plot robot
% figure(200);plot(miu2(1:hang,1),miu2(1:hang,2),'k+') ;hold on    %plot robot
for base_i=1:base
    for j=0:per_mark_num-1
         figure(base_i*100);axis equal;
         plot(miu2(1:hang,(base_i-1)*(per_mark_num*2)+3+2*j+1),miu2(1:hang,(base_i-1)*(per_mark_num*2)+3+2*j+2),color(j+1)) ;hold on  %plot mark
          grid on;
         figure(101)   ;plot(miu2(1:hang,(base_i-1)*(per_mark_num*2)+3+2*j+1),miu2(1:hang,(base_i-1)*(per_mark_num*2)+3+2*j+2),color(j+1)) ;hold on  %plot mark
    end
end
grid on;








% 
% 比较慢
% 
% color=['r.','g.','b.','y','k.'];
% for i=1:hang
%     base=(lie-3)/10;
%     figure(base_i);plot(miu(i,1),miu(i,2),'k+') ;hold on    %plot robot
%     figure(200) ;plot(miu(i,1),miu(i,2),'k+') ;hold on    %plot robot
%     for base_i=1:base
%         for j=0:4
%             if miu(i,(base_i-1)*10+3+2*j)~=NaN
%                 figure(base_i);plot(miu(i,(base_i-1)*10+3+2*j+1),miu(i,(base_i-1)*10+3+2*j+2),color(j+1)) ;hold on  %plot mark
%                 figure(200) ;plot(miu(i,(base_i-1)*10+3+2*j+1),miu(i,(base_i-1)*10+3+2*j+2),color(j+1)) ;hold on  %plot mark
%             end
%             
%         end
%     end
% end
