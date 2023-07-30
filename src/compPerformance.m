% It seems that Newtons's method converges faster than Broyden's method
% However, Broyden's method may have better performance since we don't need
% the gradient for the jacobian matrix while looping.

n = 10;
ls=[0.5,0.5]';
t=rand(2,1); %Choose some random starting point.

clf;
plotRobot2D(ls,t);
hold off;

% Newton's method
count1 = 0;
mode = 0;
while(count1 < 5)
  desired=ginput(1)'; %Get desired position from user

  clf;
  plot(desired(1),desired(2),'*');
  hold on;
  plotRobot2D(ls,t,':');
  
  %Solve and display the position
  t=invKin2D(ls,t,desired,n,mode); 
  plotRobot2D(ls,t);
  hold off;
  count1 = count1 + 1
end


n = 10;
ls=[0.5,0.5]';
t=rand(2,1); %Choose some random starting point.

clf;
plotRobot2D(ls,t);
hold off;

% Broyden's method
mode = 1;
count2 = 0;
while(count2 < 5)
  desired=ginput(1)'; %Get desired position from user

  clf;
  plot(desired(1),desired(2),'*');
  hold on;
  plotRobot2D(ls,t,':');
  
  %Solve and display the position
  t=invKin2D(ls,t,desired,n,mode); 
  plotRobot2D(ls,t);
  hold off;
  count2 = count2 + 1
end
