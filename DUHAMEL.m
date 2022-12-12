
close all
               %Simple summation   ==>1
               %Trapazoidal rule   ==>2
               %Simpson rule       ==>3
Z=input('inter Z ==>');

               % if Load type is functional   ==>  Loadtype=1
               %if Load typre is tabular      ==>  Loadtype=0
Loadtype=input('inter Loadtype ==> ');
[t,P]=input_fun(Loadtype,Z);
k=input('spring stiffness K=');
m=input('inter mass m=');
W=sqrt(k/m);              %Natural frequency
Dt=t(2)-t(1);

switch Z
        case {3}
            G=(W*Dt)/(k*Z);  
            u=simp(t,P,W)*G;
       case {2}
             G=(W*Dt)/(k*Z);
            u=trap(t,P,W)*G;
       case {1}
             G=(W*Dt)/(k*Z);
            u=simPu(t,P,W)*G;
end
disp('u=')
disp(u')
