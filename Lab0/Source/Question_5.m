clc;
clear all;
close all;

dt=0.1; %time step size
t=0:dt:10; %simulation time
%v=0.1*sin(2*pi*t); %input voltage
u=sin(2*pi*t); %u(t) is the sine input
dy(1)=0;
y(1)=(0);

for i=1:length(t)
    ddy(i)=u(i) - 3*dy(i) - 2*y(i);
    dy(i+1)=ddy(i)*dt + dy(i);
    y(i+1)=dy(i)*dt + y(i);
    z(i) = (((2*pi*exp(-t(i))) / (4*pi^2+1)) - ((pi*exp(-2*t(i))) / (2*pi^2+2)) - ((3*pi*cos(2*pi*t(i))-sin(2*pi*t(i))+2*pi^2*sin(2*pi*t(i))) / ((pi^2+1)*(8*pi^2+2)))) 
end
y(end)=[];
i=y;
error = z-y
%z(end)=[];
b=z;

subplot(1,2,1)
plot(t,i,'--ob')
grid on
txt = ['\delta(t) = ' char(10) num2str(dt)];
text(5,.25,txt)
xticks(0:2:10)
xlabel('Time (s)','FontSize',12,'FontWeight','bold','Color','b') 
ylabel('Y','FontSize',12,'FontWeight','bold','Color','b') 
title('Sine Function','FontSize',12,'FontWeight','bold')

hold on

plot(t,b,'--*r')
legend('Numerical Solution','Analytical Solution')

hold off

subplot(1,2,2)
plot(t,error,'--ob')
grid on
xticks(0:2:10)
xlabel('Time (s)','FontSize',12,'FontWeight','bold','Color','b') 
ylabel('error','FontSize',12,'FontWeight','bold','Color','b') 
title('Sine Function','FontSize',12,'FontWeight','bold')


