require_relative "lib/numero_functions"

# Step a name from the arity to the finished string, and get the count of that (sum/
# formula version)
# 2020-12-15

#7-lang table
LETTERS_HASH = { a: 1, b: 2, c: 3, d: 4, e: 5, f: 6, g: 7, h: 8, i: 9, j: 10,
                 k: 2, l: 3, m: 4, n: 5, o: 6, p: 7, q: 8, r: 9, s: 10, t: 2,
                 u: 3, v: 4, w: 5, x: 6, y: 7, z: 8 }
loop do
  puts
  print "What is the name? "
  goal_string = gets.chomp
  puts

  steps = 0




  compute_string = string_split(string: goal_string) #array of chars

  compute_string.reverse.each_with_index do |value, index|
    char = "a" #start at the beginning of the alphabet
    count_distance = 0
    until (char == value)
      count_distance += 1
      char.succ!
    end
    steps += (26**index) * count_distance #sum formula to calculate steps without a long loop
  end

  puts "Name/Word: #{goal_string}"
  puts "Steps: #{steps}"




  puts "StepsTime: #{Time.at(steps)}"
  puts "StepsSum (using number_split_add_sum(steps)): #{number_split_add_sum(steps)}"
  puts "NumSum (using LETTERS_HASH/goal_string): #{num_letters(goal_string).sum}"
end
