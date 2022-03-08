clc; %initial clean up lines
clear all;
close all;

num=[3 8]; %Numerator
den=[1 2 8]; %Denominator
G3=tf(num,den); %Transfer Function

t=0:0.1:10; %time interval
r=sin(2*t+0.8); %time input
c=lsim(G3,r,t); %return Transfer function output

plot(t,r) %plot Sine Wave Input vs. Time

hold on %hold to plot two wave on one plot

plot(t,c) %plot Transfer Function Output vs. Time
legend('Sine Wave Input','Transfer Function Output') %legend
xlabel('Time (s)','FontSize',12,'FontWeight','bold','Color','b') 
ylabel('Y Value','FontSize',12,'FontWeight','bold','Color','b') 
title('Transfer Function','FontSize',12,'FontWeight','bold')