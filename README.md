# Adams-Bashforth-Moulton-Formula-with-Fourth-Order-Runge-Kutta-Method
Numerical ODE solver that uses the Adams-Bashforth-Moulton formula with the fourth-order Runge-Kutta method to predict and correct values for the solution.

Given an initial state of an ordinary differential equation, use the fourth-order Runge-Kutta method to find 3 more data points x(1), x(2), x(3) to the solution of the ODE all spaced by some chosen time h.

Next, use the Adams-Bashforth formula to predict the next data point 
$$x_{i+1}=x_i + \frac{h}{24} $$
