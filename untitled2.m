syms x y 
eqn1 = 0.2*(y) == x;
eqn2 = (x+y)*0.2 == 96971.83;
eqn3 = x+y==581407.82;

sol = solve([eqn1, eqn2, eqn3], [x, y]);
xSol = sol.x
ySol = sol.y