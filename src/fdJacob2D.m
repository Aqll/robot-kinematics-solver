function J = fdJacob2D(l, theta, h) 
    J = [(evalRobot2D(l, theta+[h;0]) - evalRobot2D(l, theta-[h;0]))/(2*h), (evalRobot2D(l, theta+[0;h]) - evalRobot2D(l, theta-[0;h]))/(2*h)];
end