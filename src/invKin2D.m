function theta = invKin2D(l, theta0, pos, n, mode)
    % initial guess
    xk = theta0;
    % threshold on norm to terminate
    threshold = 0.00001;
    if mode == 0
        % Newton's method
        for i = 1:n
            [curr_pos, J_k] = evalRobot2D(l, xk);
            % difference between current and expected position
            f_xk = curr_pos - pos;
            s_k = -J_k\f_xk;
            % normalising angle
            xk = mod((xk + s_k), 2*pi);
            if norm(f_xk) < threshold
                break
            end
        end
    elseif mode == 1
        % Broyden's method
        % Initial jacobian approximation
        [curr_pos, B_k] = evalRobot2D(l, xk);
        for i = 1:n
            f_xk = curr_pos - pos;
            s_k = -B_k\f_xk;
            xk = mod((xk + s_k), 2*pi);
            [curr_pos, ~] = evalRobot2D(l, xk);
            f_xk1 = curr_pos - pos;
            y_k = f_xk1 - f_xk;
            B_k = B_k + (((y_k - (B_k*s_k))*s_k.') / (s_k.'*s_k));
            if norm(f_xk) < threshold
                break
            end
        end
    end
    theta = xk;
end