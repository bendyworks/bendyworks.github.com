!SLIDE

# huh?

## values : all? :: functions : conjoin

    @@@ ruby
    is_number = lambda {|n| n.kind_of?(Numeric)}
    is_even = lambda {|n| n % 2 == 0}
    div_by_three = lambda {|n| n % 3 == 0}

    even_number_div_by_three =
      conjoin(is_number, is_even, div_by_three)
