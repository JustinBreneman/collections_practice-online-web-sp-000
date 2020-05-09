def sort_array_asc(array)
  array.sort
end

def sort_array_desc(array)
  array.sort { |a, b| b <=> a }
end

def sort_array_char_count(array)
  array.sort { |a, b| a.length <=> b.length }
end

def swap_elements_from_to(array,index,destination_index)
  array[index], array[destination_index] = array[destination_index], array[index]
  array
end

def swap_elements(array)
  swap_elements_from_to(array,1,2)
end

def reverse_array(array)
  array.reverse
end

def kesha_maker(array)
  array2 = []
  array.each { |word| array2 << word.split('')}
  array2[0][2] = '$' && array2[1][2] = '$' && array2[2][2] = '$'
  array2.each_with_index { |word,index| array[index] = word.join('')}
  array
end

def find_a(array)
  array.select{ |word| word.start_with?("a")}
end

def sum_array(array)
  sum=0
  array.each do |num|
    num.to_i
    sum += num
  end
  sum
end

def add_s(array)
  array.each_with_index.collect { |word, index| index != 1 ? word << "s" : word}
end
