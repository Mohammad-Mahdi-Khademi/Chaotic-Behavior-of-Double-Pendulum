clc;
clear;
close all;

%--------------------------Favorite Parameters-----------------------------

l1 = 1 ; l2 = 2 ; m1 = 2 ; m2 = 1 ; g = 9.807;

%---------------------------Favorite Initials------------------------------

tspan = 60;
theta1 = pi/2;
theta1_prime = 0;
theta2 = pi;
theta2_prime = 0;

Y0 = [theta1 theta1_prime theta2 theta2_prime];
options = odeset('RelTol',1.0e-6);
[t,y] = ode45(@(t,y)Double_Pendulum(t,y),[0 60],[theta1 theta1_prime  theta2 theta2_prime],options);

%--------------Equation Of Kinetic And Potential Total Energy--------------

V = -(m1+m2)*g*l1*cos(y(:,1))-m2*g*l2*cos(y(:,3));
T = (0.5*m1*l1*l1*y(:,2).^2)+(0.5*m2*(l1*l1*y(:,2).^2+l2*l2*y(:,4).^2+2*l1*l2*y(:,2).*y(:,4).*cos(y(:,1)-y(:,3))));
E = T + V;

%---------------------------Ploting And Graphs-----------------------------

figure(1)
plot(t,E,'black','linewidth',1);
h=gca;
get(h,'fontSize');
set(h,'fontSize',14);
legend('E')
xlabel('Time','fontSize',14);
ylabel('Total Energy','fontSize',14);
title('Total Energy For First Conditions','fontsize',14);
fh = figure(1);
set(fh, 'color', 'white'); 

%---------------------------------The END----------------------------------