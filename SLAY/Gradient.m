function [ X ] = Gradient( A,B,eps0,h )

n=length(A);
X=zeros(n,1);
X1 = X;
e = X;
dE=X;
err = sum(abs(A*X1-B));
eps = eps0 + 1;

while eps>eps0
    for i=1:n
        s=0;
        for j=1:n
            s=s+A(i,j)*X1(j);
        end
        e(i)=s-B(i);
    end
    
    for j=1:n
        s=0;
        for i=1:n
            s=s+e(i)*A(i,j);
        end
        dE(j)=s;
    end
    
    X=X1-h*dE;
    eps = sum(abs(A*X - B));
    
    if(err >= eps)
        X1 = X;
        err = eps;
        h = h*1.2;
    else
        h=h/4;
    end
    
end
end

