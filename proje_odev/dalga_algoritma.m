function [ deger_verilmis_map, yol ,yol1,yol2,yol3] = dalga_algoritma( map, robot_x, robot_y,robot_x1,robot_y1,robot_x2, robot_y2,robot_x3, robot_y3)

    [m, n] = size(map);

    % hedef  konumunu buluyoruz burda harita uzerinde
    [hedef_x, hedef_y] = ind2sub(size(map), find(map == 2));
    
    % hedef konumlarýný indexledik yani baska deðisken atadik 
	nokta_x = [hedef_x];
    
	nokta_y = [hedef_y];  
    
    map(hedef_x, hedef_y) = 2;
    
    % burda bir dongu olusturyoruz
    while isempty(nokta_x) == 0 && isempty(nokta_y) == 0

        % get the current block from the queue
        x = nokta_x(1); y = nokta_y(1);
        %nokta deðrini tanýmlýyoruz ilk basta  hedefe 2 verdik yani sonra 
        ... ki adýmda 3 olacak 
       nokta_degeri = map(x, y) + 1;

        % burda ise komþu hucrelri araþtiracagiz harita dýnýn dýþýnda mý
        ... yoksa engelde gibi arastiracagiz
         % m ve n harita(map) boyutlarý
        [ map, nokta_x,  nokta_y] = komsu_hucre_kontrol( map, x, y, nokta_degeri, m, n, nokta_x, nokta_y );

        
        nokta_x = nokta_x(2: end); nokta_y= nokta_y(2: end);
        
    end
    
    deger_verilmis_map = map;

   
   yol = [robot_x, robot_y;];
   yol1 = [robot_x1, robot_y1;];
   yol2 = [robot_x2, robot_y2;];
   yol3 = [robot_x3, robot_y3;];
   

   
    %deger_verilmis_map üzerinde ki robot deðeri taki hedefe ulasana 
    ... kadar azalýr bunu  while dongusunde kulllandýk 
    deger = map(robot_x, robot_y);
    deger1 = map(robot_x1, robot_y1);
    deger2 = map(robot_x2, robot_y2);
    deger3 = map(robot_x3, robot_y3);
    
    
    
    while deger > 0
        
        
        [ yol, min_x, min_y ] = yol_bulma( map, robot_x, robot_y, m, n, yol );
        
        robot_x = min_x;
        
        robot_y = min_y;
        
        deger = deger - 1;
        
    end
      while deger1 > 0
        
        
        [ yol1, min_x, min_y ] = yol_bulma1( map, robot_x1, robot_y1, m, n, yol1 );
        
        robot_x1 = min_x;
        
        robot_y1 = min_y;
        
        deger1 = deger1 - 1;
        
      end
     while deger2 > 0
        
        
        [ yol2, min_x, min_y ] = yol_bulma2( map, robot_x2, robot_y2, m, n, yol2 );
        
        robot_x2 = min_x;
        
        robot_y2 = min_y;
        
        deger2 = deger2 - 1;
        
     end
     while deger3 > 0
        
        
        [ yol3, min_x, min_y ] = yol_bulma3( map, robot_x3, robot_y3, m, n, yol3 );
        
        robot_x3 = min_x;
        
        robot_y3 = min_y;
        
        deger3 = deger3 - 1;
        
     end
      


end