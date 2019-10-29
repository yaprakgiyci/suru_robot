function [ map, nokta_x, nokta_y] = kontrol( map, x, y,nokta_degeri, m, n,nokta_x,  nokta_y)
% 
% bu kýsým cok onemli !!! 
%burda  noktanýn konumlarýný control ediyoruz harita içinde mi 
... yoksa dýþýnda mý pixsel deðri 0 mý yoksa deðil mi 
    ... if þartýný saðlýyorsa aþaðida ki komut satýrlarý gercekleþtiriir  
    if ((x >= 1 && x <= m) && (y >= 1 && y <= n) && map(x, y) == 0)
        
        map(x, y) = nokta_degeri;% nokta deðeri 1 artýyor ve map(x,y) atanýyor
        % while döngüsünde surekli birer birer artacak ilk basta 2'di sonra
      ... 3 olacak taki robot kordinatlarýna ulasana kadar burda onemli bir 
   ...  husus map(x,y)=0 olan hucreleri alacak ve yeni deðerler atacak 2, 3
   ... 4, 5 gibi devem eder 
          
        nokta_x = [nokta_x, x]; % yeni huclerin kordinatlarý 
        
        nokta_y = [nokta_y, y];
          
    end 

end