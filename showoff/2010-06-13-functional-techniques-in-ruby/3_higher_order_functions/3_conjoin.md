!SLIDE

# conjoin

    @@@ ruby
    def conjoin *e
      base = lambda {|*a| true}
      e.inject(base) do |c, pred|
        lambda do |*a|
          c[*a] && pred[*a]
        end
      end
    end
