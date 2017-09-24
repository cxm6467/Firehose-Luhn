module Luhn
  def self.is_valid?(number)
    #WRITE YOUR SOLUTION HERE
    ## Step One split number to digits (.split)
    mod_ary = number.to_s.split('')
    # p ("Incoming number as an array:  #{mod_ary}.")
    mod_ary = mod_ary.reverse
    # p ("Same array but reversed:  #{mod_ary}.")
    ## Return arry holder
    # ret_ary = []
    sum = 0
    # puts "---"
    # puts "Attempting to go through the array one by one..."
    mod_ary.each_with_index do |value, index|
      # puts "Index:  #{index}, Value:  #{value}."
      ## Go through every other value
      if index.odd?
        val = value.to_i * 2
        # puts "Even Index:  #{index}, Even Value:  #{value}."
        ## Check if 2x value is >= 10
        if val >= 10
          # puts "-----Value is greater than or equal to 10, Value: #{value.to_i * 2}."
          # puts "Adding #{(value.to_i * 2) -10}"
          ret_ary << (val - 9)
          sum += val - 9
        else
          # puts "+++++Value is less than 10, adding #{value.to_i *2}"
          ret_ary << val
          sum += val
        end
      else
        # puts "Odd Index:  #{index}, Odd Value:  #{value}."
        ## Add value to return arry
        ret_ary << value.to_i
        sum += value.to_i
      end
    end
    # puts "Original Array:  #{mod_ary}"
    # puts "New Array:  #{ret_ary}"
    # puts "Attempting to add all values in new array together"
    # sum = 0
    # ret_ary.each do |x|
    #   sum += x.to_i
    # end
    # # puts "Sum of array:  #{sum}"
    # ## Checks whether or not it is mod 10
    # sum % 10 == 0
    sum % 10 == 0
    # ret_ary.reduce(0, :+) % 10 == 0
  end
end