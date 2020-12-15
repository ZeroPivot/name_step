require_relative "lib/magicwand"

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

def compute_word_steps!(goal_string:)

    steps = 0
    begin_string = 'a' * string_arity(goal_string)     
    compute_string = string_split(string: goal_string) #array of chars

    compute_string.reverse.each_with_index do |value, index|
        char = 'a' #start at the beginning of the alphabet
        count_distance = 0
        until (char == value)
            count_distance += 1
            char.succ!       
        end
        steps += (26 ** index) * count_distance #sum formula to calculate steps without a long loop
                
    end
    steps
end



steps_first = compute_word_steps!(goal_string: goal_string)
steps_second = compute_word_steps!(goal_string: goal_string2)
puts "Names/Words: #{goal_string} vs #{goal_string2}"
puts "Steps Difference: #{(steps_first - steps_second).abs}"