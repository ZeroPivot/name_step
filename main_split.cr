require "./lib/numero_functions"
require "big/big_int"

# Step a name from the arity to the finished string, and get the count of that (sum/
# formula version)
# 2020-12-17

## Usage of [integer or string].to_big_i to allow for arbitrarily large numbers.

loop do
  puts
  print "What is the name? "
  goal_string = gets.to_s.chomp
  puts

  steps = BigInt.new(0)
  compute_string = string_split(string: goal_string) #array of chars

  compute_string.reverse.each_with_index do |value, index|
  char = "a" #start at the beginning of the alphabet
  count_distance = 0
  until (char == value)
    count_distance += 1
    char = char.succ      
  end

  steps += BigInt.new((26.to_big_i ** index.to_big_i) * count_distance.to_big_i) #sum formula to calculate steps without a long loop
  end

  puts "Name/Word: #{goal_string}"
  puts "Steps: #{steps}"
  puts "StepsSum (using number_split_add_sum(steps)): #{number_split_add_sum(steps)}"
  puts "NumSum (using LETTERS_HASH/goal_string): #{num_letters(goal_string).sum}"
end 
