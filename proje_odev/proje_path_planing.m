map=zeros(50,50);
[m, n] = size(map);
axis([1 m+1 1 n+1])
grid on;
hold on;

pause(1);
% h=msgbox('Lutfen hedef kordinatlarý giriniz');
% uiwait(h,5);
% if ishandle(h) == 1
%     delete(h);
% end
% fare ile kordinatlarý yazýyoruz
but=0;
while (but ~= 1) 
  
    [xval,yval,but]=ginput(1);
end
xval=floor(xval);
yval=floor(yval);
hedef_x=xval;
hedef_y=yval;

map(xval,yval)=2;
plot(xval+.5,yval+.5,'kH');
text(xval+1,yval+.5,'Target')

% pause(2);
% h=msgbox('Lutfen engelin kordinatlarýný giriniz');
%   
% uiwait(h,5);
% if ishandle(h) == 1
%     delete(h);
% end



while but == 1
  
    
    [xval,yval,but] = ginput(1);
    xval=floor(xval);
    yval=floor(yval);
    map(xval,yval)=-1;
    plot(xval+.5,yval+.5,'rs');
    
   
end
 
% pause(1);
% 
% h=msgbox('Lutfen  robot1 kordinatýný giriniz');
% uiwait(h,5);
% if ishandle(h) == 1
%     delete(h);
% end

but=0;
while (but ~= 1) 
    [xvall,yvall,but]=ginput(1);
    
    xvall=floor(xvall);
    yvall=floor(yvall);
end
robot_x=xvall;
robot_y=yvall;

plot(xvall+.5,yvall+.5,'b*');
text(xvall+1,yvall+.5,'Robot_1')
%%%%%%%%%%%%%%%%%%%%%%%%%%%
% pause(1);
% 
% h=msgbox('Lutfen  robot2 kordinatýný giriniz');
% uiwait(h,5);
% if ishandle(h) == 1
%     delete(h);
% end

but=0;
while (but ~= 1) 
    [xvall2,yvall2,but]=ginput(1);
    
    xvall2=floor(xvall2);
    yvall2=floor(yvall2);
end
robot_x1=xvall2;
robot_y1=yvall2;

plot(xvall2+.5,yvall2+.5,'r*');
text(xvall2+1,yvall2+.5,'Robot_2')
% pause(1);
% 
% h=msgbox('Lutfen  robot3 kordinatýný giriniz');
% uiwait(h,5);
% if ishandle(h) == 1
%     delete(h);
% end

but=0;
while (but ~= 1) 
    [xvall3,yvall3,but]=ginput(1);
    
    xvall3=floor(xvall3);
    yvall3=floor(yvall3);
end
robot_x2=xvall3;
robot_y2=yvall3;

plot(xvall3+.5,yvall3+.5,'g*');
text(xvall3+1,yvall3+.5,'Robot_3')
% pause(1);
% 
% h=msgbox('Lutfen  robot4 kordinatýný giriniz');
% uiwait(h,5);
% if ishandle(h) == 1
%     delete(h);
% end

but=0;
while (but ~= 1) 
    [xvall4,yvall4,but]=ginput(1);
    
    xvall4=floor(xvall4);
    yvall4=floor(yvall4);
end
robot_x3=xvall4;
robot_y3=yvall4;

plot(xvall4+.5,yvall4+.5,'k*');
text(xvall4+1,yvall4+.5,'Robot_4')







[ deger_verilmis_map ,yol,yol1,yol2,yol3 ] = dalga_algoritma( map,robot_x , robot_y,robot_x1,robot_y1,robot_x2 , robot_y2,robot_x3 , robot_y3 );

%deger_verilmis_map=map;
yol_uzunluk=length(yol);
yol_uzunluk1=length(yol1);
yol_uzunluk2=length(yol2);
yol_uzunluk3=length(yol3);
for i = 1: yol_uzunluk ;
 
   pause(0.10);
plot( yol(i, 1)+0.5,yol(i, 2)+0.5,'b--o');

hold on
grid on

end
yol_uzunluk1=length(yol1);
for i = 1: yol_uzunluk1 ;
 
   pause(0.10);
plot( yol1(i, 1)+0.5,yol1(i, 2)+0.5,'r--o');

hold on
grid on

end
for i = 1: yol_uzunluk2 ;
 
   pause(0.10);
plot( yol2(i, 1)+0.5,yol2(i, 2)+0.5,'g--o');

hold on
grid on

end
for i = 1: yol_uzunluk3 ;
 
   pause(0.10);
plot( yol3(i, 1)+0.5,yol3(i, 2)+0.5,'k--o');

hold on
grid on

end
% yada cizimi þöylede yapabiliriz burda for dongusu kullnmasak çizim
... kesikli omaz
%{
i = 1: yol_uzunluk -1 ;
 
   pause(0.5);
plot( yol(i, 1)+0.5,yol(i, 2)+0.5,'b--p');

hold on
grid on
%}
 


