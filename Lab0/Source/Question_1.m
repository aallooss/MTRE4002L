clc;
clear all;
close all;

dt=0.01; %time step size
t=0:dt:10; %simulation time
v=0.1*sin(2*pi*t); %input voltage
u=ones(1,length(t)); %u(t) is the step input
dy(1)=0;
y(1)=0;

for i=1:length(t)
    ddy(i)=u(i) - 3*dy(i) - 2*y(i);
    dy(i+1)=ddy(i)*dt + dy(i);
    y(i+1)=dy(i)*dt + y(i);
end
i=ddy;
plot(t,i)