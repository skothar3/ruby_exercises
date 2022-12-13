def bubble_sort(array)
    
    is_sorted = is_sorted?(array)
    puts is_sorted
    until (is_sorted)
        for i in (0 .. array.length - 2)
            if(array[i+1] - array[i] < 0)
                temp = array[i]
                array[i] = array[i + 1]
                array[i + 1] = temp 
            end
        end
        is_sorted = is_sorted?(array) 
        puts is_sorted
    end

    return array
end

def is_sorted?(array)
    
    is_sorted = true
    for i in (0..array.length - 2)
        puts i
        if(array[i+1] - array[i] < 0)
            is_sorted = false
            break
        end
    end

    return is_sorted
end

p bubble_sort([4,3,78,2,0,2])