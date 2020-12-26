# frozen_string_literal: true

# Step a name from the arity to the finished string, and get the count of that
# 2020-12-12
print 'What is the name? '
end_test = gets.chomp
puts

DEBUG = true
MODULO_DEBUG = 1_000_000

def string_arity(string)
  string.split('').count
end

finished = false
until finished
  steps ||= 0
  name ||= end_test
  compute_string ||= 'a' * string_arity(end_test)

  if compute_string != name
    steps += 1
    compute_string.succ!

    puts "#{compute_string} -> #{steps}" if DEBUG && (steps % MODULO_DEBUG).zero?
  else
    puts "Reached the end; number of steps: #{steps}"
    finished = true
  end
end
