def is_valid?(number)
    #WRITE YOUR SOLUTION HERE

    ## Step One split number to digits (.split)
    mod_ary = number.to_s.split('')
    p ("Incoming number as an array:  #{mod_ary}.")
    mod_ary = mod_ary.reverse
    p ("Same array but reversed:  #{mod_ary}.")

    ## Return arry holder
    ret_ary = []


    puts "---"
    puts "Attempting to go through the array one by one..."

    mod_ary.each_with_index do |value, index|
      puts "Index:  #{index}, Value:  #{value}."
      ## Go through every other value
      if index.even?
        puts "Even Index:  #{index}, Even Value:  #{value}."
        ## Check if 2x value is >= 10
        if (value.to_i * 2 ) >= 10
          puts "-----Value is greater than or equal to 10, Value: #{value.to_i * 2}."
          puts "Adding #{(value.to_i * 2) -10}"
          ret_ary << ((value.to_i * 2) -10)
        else
          puts "+++++Value is less than 10, adding #{value.to_i *2}"
          ret_ary << (value.to_i * 2)
        end
      else
        puts "Odd Index:  #{index}, Odd Value:  #{value}."
        ## Add value to return arry
        ret_ary << mod_ary[index]
      end
    end

    puts "Original Array:  #{mod_ary}"
    puts "New Array:  #{ret_ary}"

    puts "-=-=-=-=-=-=-=-"
    puts "Attempting to add all values in new array together"

    sum = 0
    ret_ary.each do |x|
      sum += x.to_i
    end
    puts "Sum of array:  #{sum}"
    ## Return true/false 
    # if (sum % 10 == 0)
    #   true
    # else
    #   false
    # end
    sum % 10 == 0
  end
p is_valid?(377681478627336)