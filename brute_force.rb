base_limit = 1000
exp_limit = 20


2.upto(base_limit) do |a|
  2.upto(base_limit) do |b|
    next unless a.gcd(b) == 1
    2.upto(base_limit) do |c|
      next unless b.gcd(c) == 1
      2.upto(exp_limit) do |m|
        a_m = a**m
        2.upto(exp_limit) do |n|
          b_n = b**n
          2.upto(exp_limit) do |k|
            next if m == n and n ==k #flt
            c_k = c**k
            if a_m + b_n == c_k
              if (1.0 / m) + (1.0 / n) + (1.0 / k) < 1.0
                puts "%d^{%d} + %d^{%d} = %d^{%d}" % [a,m,b,n,c,k]
              end
              break if c_k > a_m + b_n                              
            end    
          end      
        end    
      end
    end      
  end  
end