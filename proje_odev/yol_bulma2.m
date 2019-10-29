function [ yol2, min_x, min_y ] = yol_bulma2 ( map, robot_x2, robot_y2, m, n, yol2 )

    min_x = robot_x2;
    min_y = robot_y2;

    % sol �st h�cre
    x = robot_x2 - 1;
	y = robot_y2 - 1;
    [ min_x, min_y ] = yol_min_nokta( map, robot_x2, robot_y2, x, y, m, n, min_x, min_y );
    
    % sol alt h�cre
	 x = robot_x2 +1;
	y = robot_y2 - 1;
    [ min_x, min_y ] = yol_min_nokta( map, robot_x2, robot_y2, x, y, m, n, min_x, min_y );
    
    % sa� alt h�cre
	 x = robot_x2 + 1;
	y = robot_y2 + 1;
    [ min_x, min_y ] = yol_min_nokta( map, robot_x2, robot_y2, x, y, m, n, min_x, min_y );
    
    
    % sa� �st h�cre
	 x = robot_x2 - 1;
	y = robot_y2 + 1;
    [ min_x, min_y ] = yol_min_nokta( map, robot_x2, robot_y2, x, y, m, n, min_x, min_y );
    
    % sol h�cre
	 x = robot_x2 ;
	y = robot_y2 - 1;
    [ min_x, min_y ] = yol_min_nokta( map, robot_x2, robot_y2, x, y, m, n, min_x, min_y );
    
    % alt h�cre
	 x = robot_x2 +1;
	y = robot_y2 ;
    [ min_x, min_y ] = yol_min_nokta( map, robot_x2, robot_y2, x, y, m, n, min_x, min_y );
    
    % sa� h�cre
	 x = robot_x2 ;
	y = robot_y2 +1;
    [ min_x, min_y ] = yol_min_nokta( map, robot_x2, robot_y2, x, y, m, n, min_x, min_y );
    
    % �st h�cre
	 x = robot_x2 - 1;
	y = robot_y2 ;
    [ min_x, min_y ] = yol_min_nokta( map, robot_x2, robot_y2, x, y, m, n, min_x, min_y );
    
    yol2 = [yol2; min_x, min_y;];
    
end

