module Enumerable
  
  def my_each
    for i in (0...self.length)
      yield(self[i])
    end
    self
  end
  
  def my_each_with_index
    for i in (0...self.length)
      yield(self[i],i)
    end
    self
  end
  
  def my_select
    result = []
    self.my_each do |i|
      result << i if yield(i)
    end
    result
  end
  
  def my_all?
    result = true
    self.my_each do |i|
      if !yield(i)
        result = false
        break
      end
    end
    result
  end
  
  def my_any?
    result = false
    self.my_each do |i|
      if yield(i)
        result = true
        break
      end
    end
    result
  end
  
  def my_none?
    result = true
    self.my_each do |i|
      if yield(i)
        result = false
        break
      end
    end
    result
  end
  
  def my_count
    count = 0
    self.my_each do |i|
      if yield(i)
        count += 1
      end
    end
    count
  end
  
  def my_map(input_proc)
    result = []
    if block_given?
      self.my_each do |i|
        result << yield(input_proc.call(i))
      end
    else
      self.my_each do |i|
        result << input_proc.call(i)
      end
    end
    result
  end
  
  def my_inject(n=nil)
    array = self.to_a
    result = n == nil ? array.first : n
    range = n == nil ? (1...array.length).to_a : (0...array.length).to_a
    range.my_each do |i|
      result = yield(result, array[i])
    end
    result
  end
  
end

def multiply_els(array)
  array.my_inject{|i,j| i*j}
end