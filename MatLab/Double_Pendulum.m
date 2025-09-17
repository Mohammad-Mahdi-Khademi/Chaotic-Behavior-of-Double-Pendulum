%------------------------------Double Pendulum-----------------------------

function [yprime] = Double_Pendulum(t,y)

yprime = zeros(4,1);

l1 = 1 ; l2 = 2 ; m1 = 2 ; m2 = 1 ; g = 9.807;

yprime(1) =y(2);
yprime(2)=((-m2*l2*y(4)*y(4)*sin(y(1)-y(3))-g*(m1+m2)*sin(y(1)))*(m2*l2)-(m2*l2*cos(y(1)-y(3)))*(m2*l1*y(2)*y(2)*sin(y(1)-y(3))-m2*g*sin(y(3)))) / (((m1+m2)*l1)*(m2*l2)-(m2*l1*cos(y(1)-y(3)))*(m2*l2*cos(y(1)-y(3))));
yprime(3)= y(4);
yprime(4)=(((m1+m2)*l1)*(m2*l1*y(2)*y(2)*sin(y(1)-y(3))-m2*g*sin(y(3)))-(m2*l1*cos(y(1)-y(3)))*(-m2*l2*y(4)*y(4)*sin(y(1)-y(3))-g*(m1+m2)*sin(y(1))) ) /(((m1+m2)*l1)*(m2*l2)-(m2*l1*cos(y(1)-y(3)))*(m2*l2*cos(y(1)-y(3))));

end