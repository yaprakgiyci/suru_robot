function [ map, nokta_x, nokta_y] = kontrol( map, x, y,nokta_degeri, m, n,nokta_x,  nokta_y)
% 
% bu k�s�m cok onemli !!! 
%burda  noktan�n konumlar�n� control ediyoruz harita i�inde mi 
... yoksa d���nda m� pixsel de�ri 0 m� yoksa de�il mi 
    ... if �art�n� sa�l�yorsa a�a�ida ki komut sat�rlar� gercekle�tiriir  
    if ((x >= 1 && x <= m) && (y >= 1 && y <= n) && map(x, y) == 0)
        
        map(x, y) = nokta_degeri;% nokta de�eri 1 art�yor ve map(x,y) atan�yor
        % while d�ng�s�nde surekli birer birer artacak ilk basta 2'di sonra
      ... 3 olacak taki robot kordinatlar�na ulasana kadar burda onemli bir 
   ...  husus map(x,y)=0 olan hucreleri alacak ve yeni de�erler atacak 2, 3
   ... 4, 5 gibi devem eder 
          
        nokta_x = [nokta_x, x]; % yeni huclerin kordinatlar� 
        
        nokta_y = [nokta_y, y];
          
    end 

end