%%
close all; clear all; clc;

netw=newp([0 1; -2 2],1);
W=[0 0 1 1; 0 1 0 1];
T=[0 0 0 1]; 
netw=init(netw);
symulacja_przed=sim(netw,W)
netw.trainParam.epochs=10; 
netw=train(netw,W,T);
symulacja_po = sim(netw,W)