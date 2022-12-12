function t1=Z_cal(time,Z)
 t=time(1):time(2):time(3);
 n=numel(t);
 if Z==3
     if mod(n,2)==0
         t1=[t t(end)+(t(2)-t(1))];
     else
         t1=t;
     end
 elseif (Z==2)||(Z==1)
     t1=t;
 else
     error('***Incorrect number for Z***')
 end
end
