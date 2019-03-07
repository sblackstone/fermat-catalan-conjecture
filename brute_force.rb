
# a^{m}+b^{n}=c^{k}\quad

# a,b,c co-prime
def bases(limit)
  2.upto(limit) do |a|
    2.upto(limit) do |b|
      2.upto(limit) do |c|
        yield a,b,c if a.gcd(b) == 1 and b.gcd(c) == 1 #and a == 2 and b == 7 and c == 3
      end      
    end  
  end
end

def exponents(limit)  
  2.upto(limit) do |m|
    2.upto(limit) do |n|
      2.upto(limit) do |k|
        next if m == n and n ==k #flt
        yield m,n,k #if m == 5 and n == 2 and k == 4
      end      
    end    
  end  
end

bases(20) do |a,b,c|
  exponents(20) do |m,n,k|
    #puts "%d^{%d} + %d^{%d} = %d^{%d}" % [a,m,b,n,c,k]
    #puts "LHS: %d" % [ (a**m) + (b**n) ]
    #puts "RHS: %d" % [ c**k ]
    if (a**m) + (b**n) == c**k #or true
      if (1.0 / m) + (1.0 / n) + (1.0 / k) < 1.0
        puts "%d^{%d} + %d^{%d} = %d^{%d}" % [a,m,b,n,c,k]
      end
    end    
  end
end



