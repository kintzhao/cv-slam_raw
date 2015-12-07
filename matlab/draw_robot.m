function []=draw_robot(middle_x,middle_y,theta,color)
%  alpha = 0:pi/20:2*pi;    %角度[0,2*pi]
%  R = 1;                   %半径 
%  x = middle_x + R*cos(alpha); 
%  y = middle_y + R*sin(alpha);  
%  plot(x,y,color);hold on;
length = 0;
base_x = middle_x + length * cos(theta);
base_y = middle_y + length * sin(theta);

% %  plot([middle_x,middle_y],[base_x,base_y],color);hold on;
% line([107,150],[347,190],'linewidth',4,'color','r')
line([middle_x,base_x],[middle_y,base_y],'color',color);hold on;