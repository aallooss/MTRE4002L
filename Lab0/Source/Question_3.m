clc;
clear all;
close all;

dt=0.01; %time step size
t=0:dt:10; %simulation time
v=0.1*sin(2*pi*t); %input voltage
u=ones(1,length(t)); %u(t) is the step input
dy(1)=0; %initializing
y(1)=0; %initializing

for i=1:length(t) %Euler's method
    ddy(i)=u(i) - 3*dy(i) - 2*y(i);
    dy(i+1)=ddy(i)*dt + dy(i);
    y(i+1)=dy(i)*dt + y(i);
end

y(end)=[]; %deleting last element in vector
plot(t,y,'--ob') %plotting y value vs. time
grid on %turns plot grid marks on
txt = ['\delta(t) = ' char(10) num2str(dt)]; %ignore the sqiggle
text(5,.25,txt) %adds text to center of plot
xticks(0:2:10) %sets tick marks on x axis
legend('Numerical Solution') %legend
xlabel('Time (s)','FontSize',12,'FontWeight','bold','Color','b') 
ylabel('Y','FontSize',12,'FontWeight','bold','Color','b') 
title('Unit Step Function','FontSize',12,'FontWeight','bold')