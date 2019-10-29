function [ yol3, min_x, min_y ] = yol_bulma3 ( map, robot_x3, robot_y3, m, n, yol3 )

    min_x = robot_x3;
    min_y = robot_y3;

    % sol üst hücre
    x = robot_x3 - 1;
	y = robot_y3 - 1;
    [ min_x, min_y ] = yol_min_nokta( map, robot_x3, robot_y3, x, y, m, n, min_x, min_y );
    
    % sol alt hücre
	 x = robot_x3 +1;
	y = robot_y3 - 1;
    [ min_x, min_y ] = yol_min_nokta( map, robot_x3, robot_y3, x, y, m, n, min_x, min_y );
    
    % sað alt hücre
	 x = robot_x3 + 1;
	y = robot_y3 + 1;
    [ min_x, min_y ] = yol_min_nokta( map, robot_x3, robot_y3, x, y, m, n, min_x, min_y );
    
    
    % sað üst hücre
	 x = robot_x3 - 1;
	y = robot_y3 + 1;
    [ min_x, min_y ] = yol_min_nokta( map, robot_x3, robot_y3, x, y, m, n, min_x, min_y );
    
    % sol hücre
	 x = robot_x3 ;
	y = robot_y3 - 1;
    [ min_x, min_y ] = yol_min_nokta( map, robot_x3, robot_y3, x, y, m, n, min_x, min_y );
    
    % alt hücre
	 x = robot_x3 +1;
	y = robot_y3 ;
    [ min_x, min_y ] = yol_min_nokta( map, robot_x3, robot_y3, x, y, m, n, min_x, min_y );
    
    % sað hücre
	 x = robot_x3 ;
	y = robot_y3 +1;
    [ min_x, min_y ] = yol_min_nokta( map, robot_x3, robot_y3, x, y, m, n, min_x, min_y );
    
    % üst hücre
	 x = robot_x3 - 1;
	y = robot_y3 ;
    [ min_x, min_y ] = yol_min_nokta( map, robot_x3, robot_y3, x, y, m, n, min_x, min_y );
    
    yol3 = [yol3; min_x, min_y;];
    
end

