require_relative 'enumerable'

class MyList
  include Myenumerable

  def initialize(*list)
    @list = list
  end

  def showlist
    @list.each { |n| print n }
  end

  def call_blocks(&block)
    @list.each(&block)
  end
end

list = MyList.new(1, 2, 3, 4)

puts(list.all? { |e| e < 5 })
puts(list.all? { |e| e > 5 })
puts(list.any? { |e| e == 2 })
puts(list.any? { |e| e == 5 })
p(list.filter(&:even?))
