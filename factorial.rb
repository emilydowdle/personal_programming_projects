# better understand recursion through creating
# a method that recursively finds the factorial
# of a user-inputed number

def prompt(message)
  puts "=> #{message}"
end

def is_valid?(num)
  if num >= 0
    true
  else
    false
  end
end

# def verify_natural_number(integer)
#   return if is_valid?(integer)
# end

def factorial(num)
  if num == 0
    1
  else
    num * factorial(num-1)
  end
end

prompt("Welcome to Factorial!")
prompt("Please input an integer greater than 0.")

user_input = 0

loop do
  user_input = gets.chomp.to_i
  break if is_valid?(user_input)
  prompt("Oops! That is not a positive number. Please try again.")
end

prompt("#{user_input}! is #{factorial(user_input)}.")
