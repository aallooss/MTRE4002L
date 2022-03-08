clc;
clear all;
close all;

num=[3 8]; %Numerator
den=[1 6 5]; %Denominator
G1=tf(num,den); %Transfer Function
[r,t]=gensig('square',10,100,1); %Generate Square wave input
lsim(G1,r,t); %Plot transfer function output and square wave input vs. time