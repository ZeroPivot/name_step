# Step a name from the arity to the finished string, and get the count of that
# 2020-12-12 
print "What is the name? "
end_test = gets.chomp
puts

LETTERS =
    {
        "a" => 1, 
        "b" => 2,
        "c" => 3,
        "d" => 4,
        "e" => 5,
        "f" => 6,
        "g" => 7,
        "h" => 8,
        "i" => 9,
        "j" => 10,
        "k" => 11,
        "l" => 12,
        "m" => 13,
        "n" => 14,
        "o" => 15,
        "p" => 16,
        "q" => 17,
        "r" => 18,
        "s" => 19,
        "t" => 20,
        "u" => 21,
        "v" => 22,
        "w" => 23,
        "x" => 24,
        "y" => 25,
        "z" => 26
    }.freeze

string = end_test
num = 0
(0..(string.length)).each do |i|
    char = "abcdefghijklmnopqrstuvwxyz"[i]
    num += 26 ** i * LETTERS[char]
    #num += 26 ** i * (LETTERS[char] - LETTERS['a'])
end

puts "Total Steps: #{num}"