!SLIDE

# ok... why?

    @@@ ruby
    def even_number_div_by_3 arg
      [(arg.kind_of?(Numeric)),
        (arg % 2 == 0), (arg % 3 == 0)].
          inject(true){|memo,res| memo && res}
    end

## What of:

    @@@ ruby
    even_number_div_by_3(Object.new)
    # 'undefined method `%' for #<Object:...>
