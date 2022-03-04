clc;
clear all;
close all;

R=30; %Resistance
C=0.0237; %Capacitance
dt=0.01; %time step size
t=0:dt:10; %simulation time
v=.1*sin(2*pi*t); %input voltage
q(1)=0; %setting initial condition

for i=1:length(t) %Euler's method
    dq(i)=v(i)/R-q(i)/(R*C);
    q(i+1)=dq(i)*dt + q(i);
end

i=dq; %current
plot(t,i) % ploting current vs. time
xlabel('Time (s)','FontSize',12,'FontWeight','bold','Color','b') 
ylabel('Current (A)','FontSize',12,'FontWeight','bold','Color','b')
title('RC Circuit','FontSize',12,'FontWeight','bold')