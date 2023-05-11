module Myenumerable
  def all?
    call_blocks { |e| return false unless yield e }
    true
  end

  def any?
    call_blocks { |e| return true if yield e }
    false
  end

  def filter
    filter = []
    call_blocks { |e| filter.push e if yield e }
    filter
  end
end
