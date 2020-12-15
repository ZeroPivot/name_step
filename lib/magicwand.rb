
def string_arity(string)
    string.split('').count   
end

def string_split(string:, split_by: "")
    string.split(split_by)
end

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