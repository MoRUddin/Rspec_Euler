require 'spec_helper'

describe ThreeAndFive do

  before(:each) do
    @three_and_five = ThreeAndFive.new
  end

  it "should run three_and_five and give the expected value" do
    expect(@three_and_five.range_num(1,9)).to eq(23)
    expect(@three_and_five.range_num(1,9)).not_to eq(24)
  end

  it "should run three_and_five between two numbers" do
    expect(@three_and_five.range_num(1,999)).to be_an(Integer)
    @three_and_five.print_total
  end

  it "should divide correctly" do
    expect(@even_fib.divisible_by(20,4)).to eq(true)
    expect(@even_fib.divisible_by(27,3)).to eq(true)
    expect(@even_fib.divisible_by(13,2)).not_to eq(true)
  end

end
