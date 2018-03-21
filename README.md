# Euler Project Problems (Solutions and Testing)

#### Requirements
* Ruby 5.1.5
* rspec gem

## How to run
* Enter the folder of the project you wish to run
* run `rspec` in terminal

## Challenges
* figuring out logic to solve maths problems
* writing unit tests for the project

## Methodology
* refactoring code into several functions to make it testable (at the unit level)
* keeping tests in mind when creating functions and vice versa

## Fibonacci changes
The old function ran extremely slowly because it recursively called itself, this exponentially increased calculations required to find the answer as the
```ruby
def fib(i)
  return 1 if (0..1).include? i
  (fib(i-2)+fib(i-1))
end
```
The new function lowers the calculations required to _i_, where _i_ is the input number (the nth term)
```ruby
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
```

**NOTE:** the sequence can be returned as an array instead by changing the return value from `arr.last` to `arr` if that is a preferred return, although the iterator function will need to be updated accordingly.
