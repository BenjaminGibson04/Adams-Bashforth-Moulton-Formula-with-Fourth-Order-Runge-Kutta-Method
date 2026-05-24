clear all, clc
format longg
%IVP: y' = -2xy^2
%     y(0) = 1
f = @(x,y) -2*x*y^2;

%analytical solution
y_analytical = @(x) 1./(1+x.^2);

%Initialization
x0 = 0;
X = 1; %final position point
h = 0.25;
y0 = 1;

%Final numerical solution
y_Adams_BD = Adams_BM(x0,y0,X,h,f)

%Plot numerical and analytical solutions 
hold on
fplot(y_analytical,[0 1]);
plot(linspace(x0,X,length(y_Adams_BD)),y_Adams_BD);
legend("analytical sol.", "Adams-BD sol.");
title("Analytical vs Adams-BD numerical solutions");
xlabel("position x")
ylabel("position y")
hold off


