function x = Adams_BM(t0,x0,T,h,f)
%Adams-Bashforth-Moulton formula: 
%I. use the 4th-order RK to find x(t_1),x(t_2),x(t_3). x(t_0) is given
%II. Use Adams-Bashforth formula to find a predicted value for x_n+1
%III. Use predicted x_n+1 in the Adams-Multon formula to find a corrected
%     value for x_n+1

%n - number of time intervals
n = (T-t0)/h;  %n intervals -> n+1 data points

%Use 4th-order RK to calculate the first 4 data points
%Since we only need the first 4 data points, we only need to increase the
%time 3 times. So the final time will be t0+3*h
x = RK4(t0,x0,t0+3*h,h,f); 

%update the current time
t = t0+3*h;

for i= 4:n
    %Use Adams-B to find the predicted x(i+1)
    x(i+1) = x(i) + (h/24)*(55*f(t,x(i)) - 59*f(t-h,x(i-1)) + 37*f(t-2*h,x(i-2)) - 9*f(t-3*h,x(i-3)));

    %Use Adams-M to find the corrected x(i+1)
    x(i+1) = x(i) + (h/24)*(9*f(t+h,x(i+1)) + 19*f(t,x(i)) - 5*f(t-h,x(i-1)) + f(t-2*h,x(i-2)));
end

end