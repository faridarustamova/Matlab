function  summa=halfsum(A)
    summa=0;
  if isvector(A) 
      error('matrix must be square');
  else 
      for n=1:length(A)
         for m=n:length(A)
             if length(A(1,[1:end])=length(A([1:end],1))
             summa=summa+A(n,m);
             else
                 error('matrix must be square');
             end
         end
      end
  end