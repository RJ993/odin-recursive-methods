def fib(number)
  array = []
  number.times do
    if array == []
      array.push(0)
    elsif array == [0]
      array.push(1)
    else
      array.push(array[-1] + array[-2])
    end
  end
  p array
end

def recursive_fib(number)
  number -= 1
  if number == 0
    [0]
  elsif number == 1
    [0, 1]
  else
    array = recursive_fib(number)
    array.push(array[-2] + array[-1])
  end
end

def merge_sort(array)
  return array if array == array.sort

  midpoint = (array.length / 2).ceil
  array_a = array.slice(0, midpoint)
  array_b = array.slice(midpoint, array.size - midpoint)
  sorted = merge_sort(array_a) + merge_sort(array_b)
  return sorted if sorted == sorted.sort

  sorted.each do |number_A|
    sorted.each_with_index do |number_B, index_B|
      if number_A < number_B
        sorted.delete_at(index_B)
        sorted.push(number_B)
      end
    end
  end
end

fib(20)
p recursive_fib(20)
p merge_sort([105, 79, 100, 110, 88])
