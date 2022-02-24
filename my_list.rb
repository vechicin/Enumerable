# frozen_string_literal: true

require_relative './my_enumerable'

# Class MyList
class MyList
  include MyEnumerable

  def initialize(*nums)
    @list = nums
  end

  def each
    @list.each { |num| yield(num) if block_given? }
  end
end

list = MyList.new(1, 2, 3, 4)

puts(list.all? { |num| num < 5 })
puts(list.all? { |num| num > 5 })

puts(list.any? { |num| num == 2 })
puts(list.any? { |num| num == 5 })

puts(list.filter(&:even?))
