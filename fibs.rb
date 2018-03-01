##
# Goal of assignment is to write looping and recursive functions
# that return the fibonacci sequence up to a given value.

def fibs(num)
    # Uses loop to return fibonacci sequence up to num

    result = [1]
    while result.length < num
        if result.length < 2
            result << result[-1] + 1
        else
            result << result[-1] + result[-2]
        end
    end
    result.join(", ")

end

puts fibs(20)