function [ yol1, min_x, min_y ] = yol_bulma1 ( map, robot_x1, robot_y1, m, n, yol1 )

    min_x = robot_x1;
    min_y = robot_y1;

    % sol �st h�cre
    x = robot_x1 - 1;
	y = robot_y1 - 1;
    [ min_x, min_y ] = yol_min_nokta( map, robot_x1, robot_y1, x, y, m, n, min_x, min_y );
    
    % sol alt h�cre
	 x = robot_x1 +1;
	y = robot_y1 - 1;
    [ min_x, min_y ] = yol_min_nokta( map, robot_x1, robot_y1, x, y, m, n, min_x, min_y );
    
    % sa� alt h�cre
	 x = robot_x1 + 1;
	y = robot_y1 + 1;
    [ min_x, min_y ] = yol_min_nokta( map, robot_x1, robot_y1, x, y, m, n, min_x, min_y );
    
    
    % sa� �st h�cre
	 x = robot_x1 - 1;
	y = robot_y1 + 1;
    [ min_x, min_y ] = yol_min_nokta( map, robot_x1, robot_y1, x, y, m, n, min_x, min_y );
    
    % sol h�cre
	 x = robot_x1 ;
	y = robot_y1 - 1;
    [ min_x, min_y ] = yol_min_nokta( map, robot_x1, robot_y1, x, y, m, n, min_x, min_y );
    
    % alt h�cre
	 x = robot_x1 +1;
	y = robot_y1 ;
    [ min_x, min_y ] = yol_min_nokta( map, robot_x1, robot_y1, x, y, m, n, min_x, min_y );
    
    % sa� h�cre
	 x = robot_x1 ;
	y = robot_y1 +1;
    [ min_x, min_y ] = yol_min_nokta( map, robot_x1, robot_y1, x, y, m, n, min_x, min_y );
    
    % �st h�cre
	 x = robot_x1 - 1;
	y = robot_y1 ;
    [ min_x, min_y ] = yol_min_nokta( map, robot_x1, robot_y1, x, y, m, n, min_x, min_y );
    
    yol1 = [yol1; min_x, min_y;];
    
end

