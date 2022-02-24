require_relative 'my_enumerable'
include MyEnumerable

class MyList
  def initialize(*nums)
    @list = nums
  end

  def each

  end
end

list = MyList.new(1,2,3,4)

puts list
