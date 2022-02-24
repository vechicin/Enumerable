module MyEnumerable
  def all?(&block)
    result = true
    each { |num| result = false unless yield num }
    print result
  end

  def any?(&block)
    result = false
    each { |num| result = true if yield num }
    print result
  end

  def filter(&block)
    result = []
    each { |num| result.push(num) if yield num }
    print result
  end
end
