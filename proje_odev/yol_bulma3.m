function [ yol3, min_x, min_y ] = yol_bulma3 ( map, robot_x3, robot_y3, m, n, yol3 )

    min_x = robot_x3;
    min_y = robot_y3;

    % sol �st h�cre
    x = robot_x3 - 1;
	y = robot_y3 - 1;
    [ min_x, min_y ] = yol_min_nokta( map, robot_x3, robot_y3, x, y, m, n, min_x, min_y );
    
    % sol alt h�cre
	 x = robot_x3 +1;
	y = robot_y3 - 1;
    [ min_x, min_y ] = yol_min_nokta( map, robot_x3, robot_y3, x, y, m, n, min_x, min_y );
    
    % sa� alt h�cre
	 x = robot_x3 + 1;
	y = robot_y3 + 1;
    [ min_x, min_y ] = yol_min_nokta( map, robot_x3, robot_y3, x, y, m, n, min_x, min_y );
    
    
    % sa� �st h�cre
	 x = robot_x3 - 1;
	y = robot_y3 + 1;
    [ min_x, min_y ] = yol_min_nokta( map, robot_x3, robot_y3, x, y, m, n, min_x, min_y );
    
    % sol h�cre
	 x = robot_x3 ;
	y = robot_y3 - 1;
    [ min_x, min_y ] = yol_min_nokta( map, robot_x3, robot_y3, x, y, m, n, min_x, min_y );
    
    % alt h�cre
	 x = robot_x3 +1;
	y = robot_y3 ;
    [ min_x, min_y ] = yol_min_nokta( map, robot_x3, robot_y3, x, y, m, n, min_x, min_y );
    
    % sa� h�cre
	 x = robot_x3 ;
	y = robot_y3 +1;
    [ min_x, min_y ] = yol_min_nokta( map, robot_x3, robot_y3, x, y, m, n, min_x, min_y );
    
    % �st h�cre
	 x = robot_x3 - 1;
	y = robot_y3 ;
    [ min_x, min_y ] = yol_min_nokta( map, robot_x3, robot_y3, x, y, m, n, min_x, min_y );
    
    yol3 = [yol3; min_x, min_y;];
    
end

