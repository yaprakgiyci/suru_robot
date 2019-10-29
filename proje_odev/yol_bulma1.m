function [ yol1, min_x, min_y ] = yol_bulma1 ( map, robot_x1, robot_y1, m, n, yol1 )

    min_x = robot_x1;
    min_y = robot_y1;

    % sol üst hücre
    x = robot_x1 - 1;
	y = robot_y1 - 1;
    [ min_x, min_y ] = yol_min_nokta( map, robot_x1, robot_y1, x, y, m, n, min_x, min_y );
    
    % sol alt hücre
	 x = robot_x1 +1;
	y = robot_y1 - 1;
    [ min_x, min_y ] = yol_min_nokta( map, robot_x1, robot_y1, x, y, m, n, min_x, min_y );
    
    % sað alt hücre
	 x = robot_x1 + 1;
	y = robot_y1 + 1;
    [ min_x, min_y ] = yol_min_nokta( map, robot_x1, robot_y1, x, y, m, n, min_x, min_y );
    
    
    % sað üst hücre
	 x = robot_x1 - 1;
	y = robot_y1 + 1;
    [ min_x, min_y ] = yol_min_nokta( map, robot_x1, robot_y1, x, y, m, n, min_x, min_y );
    
    % sol hücre
	 x = robot_x1 ;
	y = robot_y1 - 1;
    [ min_x, min_y ] = yol_min_nokta( map, robot_x1, robot_y1, x, y, m, n, min_x, min_y );
    
    % alt hücre
	 x = robot_x1 +1;
	y = robot_y1 ;
    [ min_x, min_y ] = yol_min_nokta( map, robot_x1, robot_y1, x, y, m, n, min_x, min_y );
    
    % sað hücre
	 x = robot_x1 ;
	y = robot_y1 +1;
    [ min_x, min_y ] = yol_min_nokta( map, robot_x1, robot_y1, x, y, m, n, min_x, min_y );
    
    % üst hücre
	 x = robot_x1 - 1;
	y = robot_y1 ;
    [ min_x, min_y ] = yol_min_nokta( map, robot_x1, robot_y1, x, y, m, n, min_x, min_y );
    
    yol1 = [yol1; min_x, min_y;];
    
end

