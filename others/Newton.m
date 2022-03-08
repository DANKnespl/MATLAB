function X=Newton(x0,f,ep,maxiter)
%E
xk=x0;
i=0;
while(i<maxiter&&(subs(f,xk)>ep||subs(f,xk)<-ep))
    xk=xk-(subs(f,xk)/subs(diff(f),xk));
    i=i+1;
end
X=xk;
end