r = 0.02425;
l = 0.081;

J1 = [1/r 0 0 0; 0 1/r 0 0 ; 0 0 1/r 0; 0 0 0 1/r]

J2 = [-sind(60) cosd(60) l; -sind(45) -cosd(45) l; sind(45) -cosd(45) l;
       sind(60) cosd(60) l]
   
J1xJ2 = J1 * J2

