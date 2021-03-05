function [table summa]=multable(n,m)
    
    %MULTABLE multiplication table.
    %T=MULTABLE(N) returns a N-by-N matrix containing the multiplication table for the intagers 1 through N.
    %MULTABLE(N,M) returns an N-by-M matrix.
    %Both input arguments must be positive integers.
    %[T SM]=MULTABLE(...) returns the matrix containing the multiplication table in T and the sum of all its elements in SM.
    
    if nargin<1
        error('must have at least one argument');
    end
    if nargin<2
        m=n;
    elseif ~isscalar(m)||m<1||m ~= fix(m)
        error('m needs to be positive integer');
    end
    if ~isscalar(n)||n<1||n ~= fix(n)
        error('n needs to be positive integer');
    end
    table=(1:n)'*(1:n);
    if nargout==2
        summa=sum(table(:));
    end