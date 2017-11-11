@total =[]

@num1 = 0
@op = 0
@num2 = 0

def calculator
  puts "Welcome to the Ruby Calculator"
  left
  operator
  right
  operation
  clear
end

def continue
  puts "Enter next calculation"
  operator
  right
  operation
  clear
end

def left
  puts "What is the first number?"
  @num1 = gets.strip
    unless @num1.match(/^\d+$/)
      puts "Please enter a valid number"
      left  
    end
    @num1.to_f   
end

def operator
  puts "Choose the operator (+ , - , / , or *)"
  @op = gets.strip
  unless @op.match(/[\+\-\*\/]/)
    puts "Please enter a valid operator"
    operator
    @op
  end
end

def right
  puts "What is the next number?"
  @num2 = gets.strip
    unless @num2.match(/^\d+$/)
    puts "Please enter a valid number"
    right  
    end
    @num2.to_f
end

def operation
  puts "Calculating..."
  case @op
    when "+"
      answer = @num1.to_f + @num2.to_f
      puts "Result = #{answer}"
      @num1 = answer
    when "-"
      answer = @num1.to_f - @num2.to_f
      puts "Result = #{answer}"
      @num1 = answer
    when "/"
      answer = @num1.to_f / @num2.to_f
      puts "Result = #{answer}"
      @num1 = answer
    when "*"
      answer = @num1.to_f * @num2.to_f
      puts "Result = #{answer}"
      @num1 = answer 
  end
end  

def clear
  puts "------------------"
  puts "Type 1 to CONTINUE"
  puts "Type 2 to CLEAR"
  puts "Type 3 to EXIT"
  puts "------------------"
    final = gets.to_i
    if final == 1
      continue
    elsif final == 2
      calculator  
    elsif final == 3
      exit
    else
      puts "Invalid input. Please try again."
    end  
end

calculator
