function [ y ] = DDR( X,Y )
%Разделенная разность

    n = length(X);
    if (n < 2)
        y = 0;
        return;
    end
    
    if (n == 2)
        y = (Y(2) - Y(1))/(X(2) - X(1));
        return;
    end
        
    y = ( DDR(X(2:n), Y(2:n)) - DDR(X(1:n-1),Y(1:n-1)) )/( X(n) - X(1) );
  
end

