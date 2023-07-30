function [pos, J] = evalRobot2D(l, theta)
    pos = [];
    J = [];

    % x = l1 * cos(𝜃1) + l2 * cos(𝜃1 + 𝜃2)
    x = [(l(1) * cos(theta(1))) + (l(2) * cos((theta(1) + theta(2))))];
    % y = l1 * sin(𝜃1) + l2 * sin(𝜃1 + 𝜃2)
    y = [(l(1) * sin(theta(1))) + (l(2) * sin((theta(1) + theta(2))))];
    pos = [x;y];

    % Derivative with respect to 𝜃1
    row1 = [(-l(1)* sin(theta(1))) + (-l(2) * sin(theta(1) + theta(2))), -l(2) * sin(theta(1) + theta(2))];
    % Derivative with respect to 𝜃2
    row2 = [(l(1) * cos(theta(1))) + (l(2) * cos(theta(1) + theta(2))), (l(2) * cos(theta(1) + theta(2)))];
    J = [row1; row2];
end

