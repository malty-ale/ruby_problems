=begin
One of the simpler (but more processor-intensive) ways of sorting a group of items in an array is bubble sort, where each element is compared to the one next to it and they are swapped if the one on the right is larger than the one on the left. This continues until the array is eventually sorted.
Build a method #bubble_sort that takes an array and returns a sorted array. It must use the bubble sort methodology (using #sort would be pretty pointless, wouldn't it?).
=end

def pair_compare(array)
  array.each_with_index do |h,i|
    if i < array.length - 1
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
      end
    end
  end
end

def bubble_sort(array)
  pair_compare(array) until array.sort == array
  putsS array
end

#bubble_sort([4,3,78,2,0,2])


def bubble_sort_by(array)
  not_finished = true
  while not_finished
    not_finished = false
    array.each_with_index do |i,j|
      if j < array.length-1
        if yield(array[j], array[j+1]) > 0
          array[j], array[j+1] = array[j+1], array[j]
          not_finished = true
        end
      end
    end
  end
  puts array
end

bubble_sort_by(["hi","hello","hey","where","what","hi"]) do |i,j|
  i.length - j.length
end