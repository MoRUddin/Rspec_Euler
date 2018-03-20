
class EvenFib
  attr_accessor :arr,:total

  def initialize
    @arr = []
    @total = 0
  end

  def iterator(max)
    i = 1
    while fib(i)<max
      current_fib = fib(i)
      if divisible_by(current_fib,2)
        arr << current_fib
      end
      i += 1
    end
    arr.sum
  end

  def print_total
    puts arr.sum
  end

  def divisible_by(i,d)
    (i%d).zero?
  end

  def fib(i)
    count = 0
    arr = [0,1]
    return 1 if (0..1).include? i
    while count<i
      arr << arr[-1]+arr[-2]
      count+=1
    end
    arr.last
  end

end
