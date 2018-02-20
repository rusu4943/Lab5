%This script generates the direction field for the ode
%                 x' = f(t,x) 
%in the interval t1 <= t <= t2, x1 <= x <= x2


%For this example we plot the direction field for the ode 
%                 x' = x^2
%in the interval 0 <= t <= 2, -2 <= x <= 2

f = @(t,x)(((2./x)-1).*(x.^(-1./2))); %right hand side of the ODE
t1 = 0; 
t2 = 2; 
x1 = 1; 
x2 = 6; 
step = .4; %make this number large for fewer vectors
[t,x] = meshgrid(t1:step:t2,x1:step:x2); 

%generate direction field 
quiver(t,x,ones(size(f(t,x))),f(t,x),'k','LineWidth',1.5)
axis([t1 t2 x1 x2]) %set axes and labels
xlabel('t')
ylabel('x')