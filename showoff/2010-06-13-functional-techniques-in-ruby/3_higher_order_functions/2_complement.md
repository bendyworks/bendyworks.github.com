!SLIDE

# complement

<div style="text-align: right; font-size: 200%">NB: f[*a] == f.call(*a)</div>

    @@@ ruby
    def complement f
      lambda {|*a| not f[*a]}
    end

    is_even = lambda {|n| n % 2 == 0}
    is_odd = complement(is_even)
    is_odd[1] # true
