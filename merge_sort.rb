##
# Implement merg sort algorithm in ruby function, using recursion.

def merge_sort(arr)
    # Follows the classic 'merge sort' methodology.

    return arr if arr.length == 1

    arr_1 = merge_sort(arr[0..arr.length/2-1])
    arr_2 = merge_sort(arr[arr.length/2..-1])
    puts "arr_1 #{arr_1} arr_2 #{arr_2}"
    new_arr = []
    
  
    arr_1.each do |i|
        to_delete = 0
        arr_2.each do |j|
            if j <= i
                new_arr.append(j)
                to_delete += 1
            else # j > i
                break
            end
        end
        to_delete.times { arr_2.shift }
        new_arr.append(i)
        end


        arr_2.each { |j| new_arr.append(j) } if arr_2.length > 0

    puts "new_arr #{new_arr}"
    new_arr
end

# p merge_sort([2,4,6,4,3,8,6])
p merge_sort([0,9,2,12,1,13,8,2,11,7,3,6,15,5,14,4,10])
