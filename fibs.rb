##
# Goal of assignment is to write looping and recursive functions
# that return the fibonacci sequence up to a given value.

def fibs(num)
    # Uses loop to return fibonacci sequence up to num

    result = [1,1]
    while result.length <= num
            result << result[-1] + result[-2]
    end
    result.join(", ")
end

def fibs_rec(ary, num)
    # Uses recursion to return fibonacci sequence up to num

    return [1,1] if num == 1
    ary = fibs_rec(ary, num - 1)
    ary << ary[-1] + ary[-2]
end

puts fibs(20)
puts fibs_rec([], 20).join(", ")