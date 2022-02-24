# Module MyEnumerable
module MyEnumerable
  def all?
    result = true
    each { |num| result = false unless yield num }
    print result
  end

  def any?
    result = false
    each { |num| result = true if yield num }
    print result
  end

  def filter
    result = []
    each { |num| result.push(num) if yield num }
    print result
  end
end
