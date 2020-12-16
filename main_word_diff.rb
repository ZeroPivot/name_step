require_relative "lib/numero_functions"

# Step a name from the arity to the finished string, and get the count of that (sum/
# formula version)
# 2020-12-15
print "What is the first name? "
goal_string = gets.chomp
puts
puts

print "What is the second name? "
goal_string2 = gets.chomp
puts
puts

steps_first = compute_word_steps!(goal_string: goal_string)
steps_second = compute_word_steps!(goal_string: goal_string2)
puts "Names/Words: #{goal_string} vs #{goal_string2}"
puts "Steps Difference: #{(steps_first - steps_second).abs}"
