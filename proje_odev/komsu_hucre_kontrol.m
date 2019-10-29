function [ map, nokta_x,  nokta_y ] = komsu_hucre_kontrol( map, i, j, nokta_degeri, m, n, nokta_x, nokta_y)




     % sol üst hucre
    x = i - 1;
	y = j - 1;
	[ map, nokta_x,  nokta_y ] =kontrol( map, x, y, nokta_degeri, m, n, nokta_x,  nokta_y );
     % sol hücre      
	x = i;
	y = j - 1;
	[ map, nokta_x,  nokta_y ] =kontrol( map, x, y, nokta_degeri, m, n, nokta_x,  nokta_y );
     %sol alt hücre       
	x = i + 1;
	y = j - 1;
	[ map, nokta_x,  nokta_y ] =kontrol( map, x, y, nokta_degeri, m, n, nokta_x,  nokta_y );
     % alt hücre       
	x = i + 1;
	y = j;
	[ map, nokta_x,  nokta_y ] =kontrol( map, x, y, nokta_degeri, m, n, nokta_x,  nokta_y );
     % sað alt hucre
	x = i + 1;
	y = j + 1;
	[ map, nokta_x,  nokta_y ] =kontrol( map, x, y, nokta_degeri, m, n, nokta_x,  nokta_y );
      % sað hucre
	x = i;
	y = j + 1;
	[ map, nokta_x,  nokta_y ] =kontrol( map, x, y, nokta_degeri, m, n, nokta_x,  nokta_y );
    %sað üst hücre   
	x = i - 1;
	y = j + 1;
	[ map, nokta_x,  nokta_y ] =kontrol( map, x, y, nokta_degeri, m, n, nokta_x,  nokta_y );
    % üst hücre
	x = i - 1;
	y = j;
	[ map, nokta_x,  nokta_y ] =kontrol( map, x, y, nokta_degeri, m, n, nokta_x,  nokta_y );
    
end

