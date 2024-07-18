module Enumerable
  # Your code goes here
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Define my_each here
  def my_each
    for i in self do
      yield(i)
    end
  end

  def my_each_with_index
    index = 0
    while index < length
      value = self[index]
      yield(value, index)
      index += 1
    end
    self
  end

  def my_all?
    each do |v|
      return false unless yield(v)
    end
    true
  end

  def my_any?
    each do |v|
      return true if yield v
    end
    false
  end

  def my_none?
    each do |v|
      return false if yield(v)
    end
    true
  end

  def my_count
    if block_given?
      count = 0
      each do |v|
        count += 1 if yield(v)
      end
      count
    else
      length
    end
  end
end
# a.each_with_index {|v,i| v*2, i*2}
# v = self[0]
# v,i
#
