clc;
clear all;
close all;

fprintf("G4") %Print G4
num=[3 8]; %Numerator
den=[1 -6 8]; %Denominator
G4=tf(num,den); %Transfer Function
fprintf("Pole(s):") %print Pole(s):
pole(G4) %returns poles of transafer function
fprintf("Zero(s):") %print Zero(s):
zero(G4) %returns zeros of transfer function

subplot(1,2,1) %plot on left side of figure
pzmap(G4) %plot pole-zero map
subplot(1,2,2) %plot on right side of figure
step(G4) %plot step input to the transfer function
%axis([0 10 0 inf]) %forcing axis range to 0 to 10