require 'spec_helper'

describe EvenFib do

  before(:each) do
    @even_fib = EvenFib.new
  end

  it "should run even_fib" do
    expect(@even_fib.iterator(4000000)).to be_an(Integer)
  end

  it "should return valid fib values" do
    expect(@even_fib.fib(3)).not_to eq(14)
    expect(@even_fib.fib(5)).to eq(8)
    expect(@even_fib.fib(6)).to eq(13)
  end

  it "should divide correctly" do
    expect(@even_fib.divisible_by(20,4)).to eq(true)
    expect(@even_fib.divisible_by(27,3)).to eq(true)
    expect(@even_fib.divisible_by(13,2)).not_to eq(true)
  end

end
