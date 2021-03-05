function k = next_prime(n)
    k=n+1;
   if ~isscalar(n) || n<1 || n ~= fix(n)
       error('n must be a positive integer');
   else
       while ~isprime(k)
           k=k+1;
       end
   end