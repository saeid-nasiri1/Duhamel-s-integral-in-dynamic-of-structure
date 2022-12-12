function [t1,P]=input_fun(Loadtype,Z)

  time=input('inter appling Load period [0,step,end] ==>');
  t=Z_cal(time,Z);

if Loadtype==1
    fprintf('\n');fprintf('\n')
    p=input('inter Load function like F==>@(t) f(t) ===>');
    P=(p(t));
    t1=t;
elseif Loadtype==0
    A=readmatrix("input_load.xlsx");
    else
       P=MLP_fun(A(:,1),A(:,2),t);
       t1=t;
   error('***Incorrect number for Loadtype***')
end
end
