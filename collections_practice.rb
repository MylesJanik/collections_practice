def sort_array_asc(array)
    array.sort
end
def sort_array_desc(array)
    array.sort do |a, b|
        b <=> a
    end
end
def sort_array_char_count(array)
    array.sort do |a, b|
        if a.length == b.length
            0
        elsif a.length < b.length
            -1
        elsif a.length > b.length
            1
        end
    end
end
def swap_elements(array)
    new_array = []
    new_array << array[0] << array[2] << array[1]
    array[3..array.length] do |number|
        new_array << number
    end
    return new_array
end
def reverse_array(array)
    array.reverse
end
def kesha_maker(array)
    new_array = []
    array.each do |name|
        temp_array = []
        temp_array = name.scan(/./)
        temp_array[2] = "$"
        new_array << temp_array.join
    end
    return new_array
end
def find_a(array)
    new_array = []
    array.each do |name|
        temp_array = []
        temp_array = name.scan(/./)
        if temp_array[0] == "a"
            new_array << temp_array.join
        end
    end
    return new_array
end
def sum_array(array)
    array.inject(0) {|i, x| i += x}
end
def add_s(array)
    new_array = []
    counter = 0
    array.each do |word|
        if counter != 1
            temp_word = word
            temp_word << "s"
            new_array << temp_word
        end
        counter += 1
    end
end
