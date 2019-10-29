function [ yol2, min_x, min_y ] = yol_bulma2 ( map, robot_x2, robot_y2, m, n, yol2 )

    min_x = robot_x2;
    min_y = robot_y2;

    % sol üst hücre
    x = robot_x2 - 1;
	y = robot_y2 - 1;
    [ min_x, min_y ] = yol_min_nokta( map, robot_x2, robot_y2, x, y, m, n, min_x, min_y );
    
    % sol alt hücre
	 x = robot_x2 +1;
	y = robot_y2 - 1;
    [ min_x, min_y ] = yol_min_nokta( map, robot_x2, robot_y2, x, y, m, n, min_x, min_y );
    
    % sað alt hücre
	 x = robot_x2 + 1;
	y = robot_y2 + 1;
    [ min_x, min_y ] = yol_min_nokta( map, robot_x2, robot_y2, x, y, m, n, min_x, min_y );
    
    
    % sað üst hücre
	 x = robot_x2 - 1;
	y = robot_y2 + 1;
    [ min_x, min_y ] = yol_min_nokta( map, robot_x2, robot_y2, x, y, m, n, min_x, min_y );
    
    % sol hücre
	 x = robot_x2 ;
	y = robot_y2 - 1;
    [ min_x, min_y ] = yol_min_nokta( map, robot_x2, robot_y2, x, y, m, n, min_x, min_y );
    
    % alt hücre
	 x = robot_x2 +1;
	y = robot_y2 ;
    [ min_x, min_y ] = yol_min_nokta( map, robot_x2, robot_y2, x, y, m, n, min_x, min_y );
    
    % sað hücre
	 x = robot_x2 ;
	y = robot_y2 +1;
    [ min_x, min_y ] = yol_min_nokta( map, robot_x2, robot_y2, x, y, m, n, min_x, min_y );
    
    % üst hücre
	 x = robot_x2 - 1;
	y = robot_y2 ;
    [ min_x, min_y ] = yol_min_nokta( map, robot_x2, robot_y2, x, y, m, n, min_x, min_y );
    
    yol2 = [yol2; min_x, min_y;];
    
end

