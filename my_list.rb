require_relative 'my_enumerable'
include MyEnumerable

class MyList
  def initialize(*nums)
    @list = nums
  end

  def our_each
    # @list.each { |num| yield num }
    return to_enum(:our_each) unless block_given?

    i = 0
    size = @list.size
    while i < size
      is_a?(Range) ? yield(min + i) : yield(@list[i])
      i += 1
    end
    @list
  end
end

list = MyList.new(1,2,3,4,5,6,7,8,9,10)

puts list
puts list.our_each { |num| num * 2 }
puts list.our_each