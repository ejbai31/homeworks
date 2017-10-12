
fish_arr = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']


def sluggish_octopus(arr)
  arr.each_with_index do |fish1, i1|
    largest = true
    arr.each_with_index do |fish2, i2|
      next if i1 == i2
      largest = false if fish2.length > fish1.length
    end
    return fish1 if largest
  end
end

class Array
  def merge_sort(&prc)
    prc ||= Proc.new{|a,b| a <=> b}
    return self if count <= 1

    mid = self.length / 2
    left = self.take(mid).merge_sort(&prc)
    right = self.take(mid).merge_sort(&prc)

    Array.merge(left, right, &prc)
  end

  private
  def self.merge(left, right, &prc)
    merged = []
    until left.empty? || right.empty?
      case prc.call(left.first, right.first)
      when -1
        merged << left.shift
      when 0
        merged << left.shift
      when 1
        merged << right.shift
      end
    end
    merged.concat(left)
    merged.concat(right)
    merged
  end
end

def dominant_octopus(arr)
  prc = Proc.new{|x,y| y.length <=> x.length}
  arr.merge_sort(&prc).first
end


####?????#####
def clever_octopus(arr)
  biggest = nil
  longest = 0
  arr.each_with_index do |fish, i|
    if fish.length > longest
      biggest = fish
      longest = fish.length
    end
  end
  biggest
end


def slow_dance(dir, arr)
  arr.each_with_index do |arrow, i|
    return i if arrow == dir
  end
end

def fast_dance(dir)
  arrows_hash = {
    "up" => 0,
    "right-up" => 1,
    "right" => 2,
    "right-down" => 3,
    "down" => 4,
    "left-down" => 5,
    "left" => 6,
    "left-up" => 7
  }
  arrows_hash[dir]
end

puts sluggish_octopus(fish_arr)
puts dominant_octopus(fish_arr)
puts clever_octopus(fish_arr)
