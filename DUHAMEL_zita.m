clc
clear
close all
               %Simple summation   ==>1
               %Trapazoidal rule   ==>2
               %Simpson rule       ==>3
Z=input('inter Z==>');

               % if Load type is functional   ==>  Loadtype=1
               %if Load type is tabular      ==>  Loadtype=0
Loadtype=input('inter Loadtype==> ');
[t,P]=input_fun(Loadtype,Z);
k=input('spring stiffness K=');
m=input('inter mass m=');
Zita=input('inter damping ratio zita=');
Wn=sqrt(k/m);              %Natural frequency
Wd=Wn*sqrt(1-Zita^2);
Dt=t(2)-t(1);

switch Z
        case {3}
            G=(Wd*Dt)/(k*Z);
            u=simp_zita(t,P,Wn,Wd,Z)*G;
       case {2}
             G=(Wd*Dt)/(k*Z);
            u=trap_zita(t,P,Wn,Wd,Zita)*G;
       case {1}
             G=(Wd*Dt)/(k*Z);
            u=simPu_zita(t,P,Wn,Wd,Zita)*G;
end
disp('u=')
disp(u')
