% Using analytic derivative
[~, J_normal] = evalRobot2D([1;1], [pi/4;pi/4])

% Using finite-difference method with central-difference formula using h= 0.1, 0.5, 1, 2, 5
J_h1 = fdJacob2D([1;1], [pi/4;pi/4], 0.1)

J_h2 = fdJacob2D([1;1], [pi/4;pi/4], 0.5)

J_h3 = fdJacob2D([1;1], [pi/4;pi/4], 1)

J_h4 = fdJacob2D([1;1], [pi/4;pi/4], 2)

J_h5 = fdJacob2D([1;1], [pi/4;pi/4], 5)

   
% 2a. The results are close enough if a small value of h (<0.5) is used

% 2b. If we have errors in our calculations due to errors in inputs, we
% can get  a good approximation using finite-difference approximation