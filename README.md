# Adams-Bashforth-Moulton-Formula-with-Fourth-Order-Runge-Kutta-Method
Numerical ODE solver that uses the Adams-Bashforth-Moulton formula with the fourth-order Runge-Kutta method to predict and correct values for the solution.

Given an initial state $$x_0$$ of an ordinary differential equation $$f(t,x(t))$$, use the fourth-order Runge-Kutta method to find 3 more data points $$x_1, x_2, x_3$$ to the solution of the ODE all spaced by some chosen time h.

Next, use the fourth-order Adams-Bashforth formula with the four most recent data points to predict the next data point 

$$x_{i+1}=x_i + \frac{h}{24}(55f(t_{i},x(t_{i}))-59f(t_{i-1},x(t_{i-1}))+37f(t_{i-2},x(t_{i-2}))-9f(t_{i-3},x(t_{i-3}))) $$

Then, use the fourth-order Adams-Moulton formula to correct the value $x_{i+1}$$

$$x_{i+1}=x_i+\frac{h}{24}(9f(t_{i+1},x(t_{i+1})) + 19f(t_i,x(t_i))-5f(t_{i-1},x(t_{i-1}))+f(t_{i-2},x(t_{i-2})))$$

Repeat the Adams-Bashforth and Adams-Moulton formulas again with the 4 most recent data points. 
