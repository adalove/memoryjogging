require 'rainbow'

#Definitions
  #Basic
    def add(first, second)
      first + second
    end

    def subtract(first, second)
      first - second
    end

    def multiply(first, second)
      first*second
    end

    def divide(first, second)
      first/second
    end
  #Advanced
    def power(first, second)
      first**second
    end

    def squareroot(first)
      Math.sqrt(first)
    end

    def square(first)
      power(first, 2)
    end

#Script
  #Introduction
quit = "no"

while quit == "no"

  print "Type '1' for the basic calculator, type '2' for the advanced calculator. "
  calc_type = gets.chomp

  case calc_type
    when "1"
      #Enter basic calculator script here

      print "What operation would you like to do? Add(a), Subtract(s), Muliply(m) or Divide(d)?"
      op = gets.chomp

      print "What is the first number?"
      first = gets.chomp.to_i

      print "What is the second number?"
      second = gets.chomp.to_i

      case op
        when 'm'
          answer = multiply(first, second)
          puts answer
        when 'a'
          answer = add(first, second)
          puts answer
        when 's'
          answer = subtract(first, second)
          puts answer
        when 'd'
          answer = divide(first, second)
          puts answer
      end


    when "2"
      #Enter advanced calculator script here
      print "What advanced operation would you like to do? Square (sq), Squareroot (sqrt), Power (pwr)"
      adv_op = gets.chomp

      case adv_op
        when 'sq'
          print "What number would you like to square?"
          first = gets.chomp.to_i
          answer = square(first)
          puts "The square of #{first} is #{answer}"
        when 'sqrt'
          print "What would you like to take the square root of?"
          first = gets.chomp.to_i
          answer = squareroot(first)
          puts "The square root of #{first} is #{answer}"
        when 'pwr'
          print "What is the number you would like to raise?"
          first = gets.chomp.to_i
          print "To what power?"
          second = gets.chomp.to_i
          answer = power(first, second)
          puts answer
      end

    else
      print "Please enter a '1' for basic calculator or a '2' for the advanced calculator. "
  end

  print "Would you like to quit (yes/no)? "
  quit = gets.chomp
end