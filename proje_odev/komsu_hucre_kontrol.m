function [ map, nokta_x,  nokta_y ] = komsu_hucre_kontrol( map, i, j, nokta_degeri, m, n, nokta_x, nokta_y)




     % sol �st hucre
    x = i - 1;
	y = j - 1;
	[ map, nokta_x,  nokta_y ] =kontrol( map, x, y, nokta_degeri, m, n, nokta_x,  nokta_y );
     % sol h�cre      
	x = i;
	y = j - 1;
	[ map, nokta_x,  nokta_y ] =kontrol( map, x, y, nokta_degeri, m, n, nokta_x,  nokta_y );
     %sol alt h�cre       
	x = i + 1;
	y = j - 1;
	[ map, nokta_x,  nokta_y ] =kontrol( map, x, y, nokta_degeri, m, n, nokta_x,  nokta_y );
     % alt h�cre       
	x = i + 1;
	y = j;
	[ map, nokta_x,  nokta_y ] =kontrol( map, x, y, nokta_degeri, m, n, nokta_x,  nokta_y );
     % sa� alt hucre
	x = i + 1;
	y = j + 1;
	[ map, nokta_x,  nokta_y ] =kontrol( map, x, y, nokta_degeri, m, n, nokta_x,  nokta_y );
      % sa� hucre
	x = i;
	y = j + 1;
	[ map, nokta_x,  nokta_y ] =kontrol( map, x, y, nokta_degeri, m, n, nokta_x,  nokta_y );
    %sa� �st h�cre   
	x = i - 1;
	y = j + 1;
	[ map, nokta_x,  nokta_y ] =kontrol( map, x, y, nokta_degeri, m, n, nokta_x,  nokta_y );
    % �st h�cre
	x = i - 1;
	y = j;
	[ map, nokta_x,  nokta_y ] =kontrol( map, x, y, nokta_degeri, m, n, nokta_x,  nokta_y );
    
end

