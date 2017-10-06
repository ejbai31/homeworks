class Stack

  def initialize
    @stack = []
  end

  def add(el)
    @stack << el
  end

  def remove
    @stack.pop
  end

  def show
    @stack
  end
end


class Queue
  def initialize
    @queue = []
  end

  def enqueue(el)
    @queue << el
  end

  def dequeue
    @queue.shift
  end

  def show
    @queue
  end

end

class Map

  def initialize
    @map = []
  end

  def assign(key, value)
    @map << [key, value] if @map.each.none?{|pair| pair[0] == key}
    @map.each do |pair|
      pair[1] = value if pair[0] == key
    end

  end

  def lookup(key)
    @map.each do |pair|
      return pair[1] if pair[0] == key
    end
    nil
  end

  def remove(key)
    @map.reject!{|pair| pair[0] ==key}
    nil
  end

  def show
    @map
  end


end
