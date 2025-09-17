clc;
clear;
close all;


%-------------------------------Parameters---------------------------------

l1 = 1 ; l2 = 2 ; m1 = 1 ; m2 = 2 ; g = 9.807;

%-----------------------------First Initials-------------------------------

tspan = 60;
theta1 = pi/2;
theta1_prime = 0;
theta2 = pi/3;
theta2_prime = 0;

Y0 = [theta1 theta1_prime theta2 theta2_prime];
options= odeset('RelTol',1.0e-6);
[t,y]=ode45(@Double_Pendulum,[0,60],[theta1 theta1_prime theta2 theta2_prime],options);

%-----------------------Position oF Mass1 and Mass2------------------------

% X-Axis
x1 = l1 * sin(y(:,1));
x2 = l1 * sin(y(:,1)) + l2 * sin(y(:,3));

% Y-Axis
y1 = -l1 * cos(y(:,1));
y2 = -l1 * cos(y(:,1)) - l2 * cos(y(:,3));

%---------------------------Ploting And Graphs-----------------------------

figure(1)
plot(x1,y1,'black','linewidth',2);
hold on
plot(x2,y2,'red','linewidth',1.5);
h=gca; 
get(h,'fontSize');
set(h,'fontSize',14);
legend('M_1','M_2');
title('Chaotic Behavior Of Double Pendulum For First Conditions','fontsize',14);
fh = figure(1);
set(fh, 'color', 'white');

  
figure(2)
plot(t,y(:,1),'black','linewidth',1.5);
hold on
plot(t,y(:,3),'red','linewidth',1.5);
h=gca; 
get(h,'fontSize');
set(h,'fontSize',14);
legend('\theta_1','\theta_2');
xlabel('Time','fontSize',14);
ylabel('Theta','fontSize',14);
title('First Coniditions For \theta_1 and \theta_2','fontsize',16);
fh = figure(2);
set(fh, 'color', 'white'); 

%------------------------End OF First Conditions---------------------------