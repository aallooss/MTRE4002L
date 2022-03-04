clc;
clear all;
close all;

dt=0.1; %time step size --- 0.5s then 0.1s then 0.01s
t=0:dt:10; %simulation time
v=0.1*sin(2*pi*t); %input voltage
u=ones(1,length(t)); %u(t) is the step input
dy(1)=0; %initializing
y(1)=(0); %initializing

for i=1:length(t) %Euler's method
    ddy(i)=u(i) - 3*dy(i) - 2*y(i);
    dy(i+1)=ddy(i)*dt + dy(i);
    y(i+1)=dy(i)*dt + y(i);
    z(i) = 0.5*u(i) + 0.5*exp(-2*t(i)) - exp(-t(i)) %analytical equation
end
y(end)=[]; %deleting last element in vector
error = z-y %calculate error between numerical and analytical

subplot(1,2,1) %plot in first position
plot(t,y,'--ob') %plotting y value vs. time
grid on %turns plot grid marks on
txt = ['\delta(t) = ' char(10) num2str(dt)];
text(5,.25,txt) %adds text to center of plot
xticks(0:2:10) %sets ticks to x axis
xlabel('Time (s)','FontSize',12,'FontWeight','bold','Color','b') 
ylabel('Y','FontSize',12,'FontWeight','bold','Color','b') 
title('Unit Step Function','FontSize',12,'FontWeight','bold')

hold on %allows to plot two functions on one plot

plot(t,z,'--*r') %plotting z value vs. time
legend('Numerical Solution','Analytical Solution')

hold off %now plotting on seperate plot

subplot(1,2,2) %plot in second position
plot(t,error,'--ob') %plotting error value vs. time
grid on %turns plot grid marks on
xticks(0:2:10) %sets ticks to x axis
xlabel('Time (s)','FontSize',12,'FontWeight','bold','Color','b') 
ylabel('error','FontSize',12,'FontWeight','bold','Color','b') 
title('Unit Step Function','FontSize',12,'FontWeight','bold')

