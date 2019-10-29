function [ yol, min_x, min_y ] = yol_bulma ( map, robot_x, robot_y, m, n, yol )

    min_x = robot_x;
    min_y = robot_y;

    % sol üst hücre
    x = robot_x - 1;
	y = robot_y - 1;
    [ min_x, min_y ] = yol_min_nokta( map, robot_x, robot_y, x, y, m, n, min_x, min_y );
    
    % sol alt hücre
	 x = robot_x +1;
	y = robot_y - 1;
    [ min_x, min_y ] = yol_min_nokta( map, robot_x, robot_y, x, y, m, n, min_x, min_y );
    
    % sað alt hücre
	 x = robot_x + 1;
	y = robot_y + 1;
    [ min_x, min_y ] = yol_min_nokta( map, robot_x, robot_y, x, y, m, n, min_x, min_y );
    
    
    % sað üst hücre
	 x = robot_x - 1;
	y = robot_y + 1;
    [ min_x, min_y ] = yol_min_nokta( map, robot_x, robot_y, x, y, m, n, min_x, min_y );
    
    % sol hücre
	 x = robot_x ;
	y = robot_y - 1;
    [ min_x, min_y ] = yol_min_nokta( map, robot_x, robot_y, x, y, m, n, min_x, min_y );
    
    % alt hücre
	 x = robot_x +1;
	y = robot_y ;
    [ min_x, min_y ] = yol_min_nokta( map, robot_x, robot_y, x, y, m, n, min_x, min_y );
    
    % sað hücre
	 x = robot_x ;
	y = robot_y +1;
    [ min_x, min_y ] = yol_min_nokta( map, robot_x, robot_y, x, y, m, n, min_x, min_y );
    
    % üst hücre
	 x = robot_x - 1;
	y = robot_y ;
    [ min_x, min_y ] = yol_min_nokta( map, robot_x, robot_y, x, y, m, n, min_x, min_y );
    
    yol = [yol; min_x, min_y;];
    
end

