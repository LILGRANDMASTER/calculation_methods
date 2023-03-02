function [ xdot ] = f( t,x )
    global InputStruct
    k1 = InputStruct.k1;
    k2 = InputStruct.k2;
    b1 = InputStruct.b1;
    m1 = InputStruct.m1;
    m2 = InputStruct.m2;
    
    xdot(1) = x(3);
    xdot(2) = x(4);
    xdot(3) = -b1/m1*x(3) -k1/m1*x(1) - k2/m1*(x(1)-x(2));
    xdot(4) = 2/m2 + k2/m2*(x(1)-x(2));
    
    xdot = xdot';
end

