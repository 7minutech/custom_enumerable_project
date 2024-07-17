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
end
# a.each_with_index {|v,i| v*2, i*2}
# v = self[0]
# v,i
#
