require "big"

# Step a name from the arity to the finished string, and get the count of that (Crystal Language Version)
# 2020-12-12 
print "What is the name? "
end_test = gets.to_s.chomp # Get the user input, which is the name of whomever you want to compute
puts

DEBUG = true
MODULO_DEBUG_RATE = 1_000_000

def string_arity(string : Nil)
    puts "String cannot be nil"
    exit
end

def string_arity(astring : String)
    astring.split("").size
end

finished = false
steps = BigInt.new(0)
steps = 0
name = end_test
compute_string = String.new
compute_string = "a" * string_arity(name) #setup the initial strings, initial step set to 0 also



until (finished)
    if (compute_string != name)
        steps += 1
        compute_string = compute_string.succ
                
        if (DEBUG && ((steps % MODULO_DEBUG_RATE) == 0))
            puts "#{compute_string} -> #{steps}"  
        end
    else
       puts "Reached the end; number of steps: #{steps}"
       finished = true 
    end

end