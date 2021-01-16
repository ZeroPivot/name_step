#7-lang table
LETTERS_HASH = { "a"=> 1, "b" => 2, "c" => 3, "d" => 4, "e" => 5, "f" => 6, "g" => 7, "h" => 8, "i" => 9, "j" => 10,
                 "k" => 2, "l" => 3, "m" => 4, "n" => 5, "o" => 6, "p" => 7, "q" => 8, "r" => 9, "s" => 10, "t" => 2,
                 "u" => 3, "v" => 4, "w" => 5, "x" => 6, "y" => 7, "z" => 8 }

def string_arity(string)
  i = string.split("").map{|i| i.to_i}
  i.size
 
end

def string_split(string = "test", split_by = "")
  string.split(split_by)
end

def compute_word_steps!(goal_string)
  steps = BigInt(0)
  #begin_string = "a" * string_arity(goal_string)
  compute_string = string_split(string: goal_string) #array of chars

  compute_string.reverse.each_with_index do |value, index|
    char = "a" #start at the beginning of the alphabet
    count_distance = 0
    until (char == value)
      count_distance += 1
      char.succ!
    end
    steps += (26 ** index) * count_distance #sum formula to calculate steps without a long loop
  end
  steps
end

def num_letters(letters)
  split_letters = letters.split("")
  letters_array = [] of Int32

  split_letters.each do |letter|
    letters_array.push(LETTERS_HASH[letter])
    #p LETTERS_HASH
  end
  return letters_array
end

def number_split_add_sum(numbers)
  number_set = numbers.to_s.split("").map { |i| i.to_i }
  result = number_set.sum
end
