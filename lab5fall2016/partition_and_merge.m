function partition_and_merge(x,N)
    if (N >= 2)
        odd = x(2:2:N)
        even = x(1:2:N-1)
        partition_and_merge(odd,length(odd));
        partition_and_merge(even,length(even));
        
      

        
    end
end

