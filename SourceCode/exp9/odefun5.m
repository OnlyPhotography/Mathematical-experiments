function dx= odefun5(t,x)
global c; %全局变量
dx = zeros(2,1);
dx(1)= x(2);
dx(2)= 20*sin(5*t)-20*c*x(2)-100*x(1);