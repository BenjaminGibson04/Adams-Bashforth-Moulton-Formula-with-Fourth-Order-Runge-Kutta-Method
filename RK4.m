function x = RK4(t0,x0,T,h,f)
%4th-order Runge-Kutta method for solving ODEs
%t0 - initial time
%x0 - intialize position x(t0)
%T - final time
%h - time step size
%f(t,x) = x'(t)

%n - number of time intervals
n = (T-t0)/h;

x = zeros(n+1,1); %n intervals -> n+1 data points
x(1) = x0;
%initialize time
t = t0;

for i = 1:n
    K1 = h*f(t,x(i));
    K2 = h*f(t+0.5*h,x(i)+0.5*K1);
    K3 = h*f(t+0.5*h,x(i)+0.5*K2);
    K4 = h*f(t+h,x(i)+K3);

    x(i+1) = x(i) + 1/6*(K1+K2+K3+K4);
   
    %Update time
    t = t + h;
end
end