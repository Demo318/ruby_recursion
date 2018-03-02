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
        arr_2.each_with_index do |j, j_ind|
            if i < j
                puts "i<j"
                break
            elsif j < i
                puts "j<i"
                new_arr.append(arr_2.delete_at(j_ind))
                puts "appended j"
            end
        end
        new_arr.append(i)
        puts "appended i"
    end

    arr_2.each { |j| new_arr.append(j) } unless arr_2.length == 0 


    puts "new arr #{new_arr}"
    new_arr
end

p merge_sort([2,4,6,4,3,8,6])