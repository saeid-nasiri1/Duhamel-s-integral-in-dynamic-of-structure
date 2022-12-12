function [u]=simPu(t,P,W)
             % Simple summation rule
             % Output of this function is u=A(t)*sin(wt)-B(t)*cos(wt);
k=1;
B_had(1)=0;       A_had(1)=0;
L_3(1)=0;         L_4(1)=0;
for i=2:numel(t)
    L_3(k+1)=sin(W*t(i));
    L_4(k+1)=cos(W*t(i));
    A_had(k+1)=A_had(k)+P(i)*cos(W*t(i)); 
    B_had(k+1)=B_had(k)+P(i)*sin(W*t(i)); 
    k=k+1;
end
u=A_had.*L_3-B_had.*L_4;
end