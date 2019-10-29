function [ min_x, min_y, nokta_degeri ] = yol_min_nokta( map, i, j, x, y, m, n, min_x, min_y )
% yol için hangi noktalarý alcaðiz 
% 1)Yol üzerinde  engel olmayacak yani map(x,y)=-1 
% 2)yol uzerinde ki noktalar haritanýn dýþýnda olmayacak 
% 3)yol için ilk baþlangýç robotun( map(i,j)) kordinat deðerleri ele alýnýyor
... sonra ki nokta için  map(x,y) deðeri  map(i,j)> map(x,y) olmalý 9>8
 ... boylece robot hedefe oluþýyor
    if ((x >= 1 && x <= m) && (y >= 1 && y <= n) && map(x, y) ~=-1 && map(x, y) < map(i, j))
        
        nokta_degeri = map(x, y);
          
        min_x = x;
        
        min_y = y;
          
    end 

end
