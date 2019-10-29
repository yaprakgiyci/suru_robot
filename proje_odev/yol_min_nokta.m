function [ min_x, min_y, nokta_degeri ] = yol_min_nokta( map, i, j, x, y, m, n, min_x, min_y )
% yol i�in hangi noktalar� alca�iz 
% 1)Yol �zerinde  engel olmayacak yani map(x,y)=-1 
% 2)yol uzerinde ki noktalar haritan�n d���nda olmayacak 
% 3)yol i�in ilk ba�lang�� robotun( map(i,j)) kordinat de�erleri ele al�n�yor
... sonra ki nokta i�in  map(x,y) de�eri  map(i,j)> map(x,y) olmal� 9>8
 ... boylece robot hedefe olu��yor
    if ((x >= 1 && x <= m) && (y >= 1 && y <= n) && map(x, y) ~=-1 && map(x, y) < map(i, j))
        
        nokta_degeri = map(x, y);
          
        min_x = x;
        
        min_y = y;
          
    end 

end
