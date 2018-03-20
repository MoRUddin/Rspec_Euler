
class ThreeAndFive
  attr_accessor :arr,:total

  def initialize
    @arr = []
    @total = 0
  end

  def range_num(s,e)
    for i in s..e
      if(divisible_by(i,3)||divisible_by(i,5))
        arr << i
      end
    end
    arr.sum
  end

  def print_total
    puts arr.sum
  end

  def divisible_by(i,d)
    (i%d).zero?
  end

end
