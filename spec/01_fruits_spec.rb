require 'spec_helper'

describe 'Array basics' do
  let(:___) { nil }
  let(:fruit) { ['apples', 'oranges', 'bananas', 'pomegranates', 'grapes'] }

  it "can report its length" do
    fruit_length = fruit.length
    expect( fruit_length ).to be == 5
  end

  it "can report the index of the string 'banana'" do
    banana_index = fruit.index('bananas')
    expect( banana_index ).to be == 2
  end

  it "can create a new array where 'raspberries' is between apples and oranges" do
    new_array = fruit.dup.insert(1, 'raspberries')
    expect( new_array ).to be == ['apples', 'raspberries', 'oranges', 'bananas', 'pomegranates', 'grapes']
    expect(fruit.count).to be == 5
  end

  it "can report the length of each string in the array" do
    lengths = fruit.dup.insert(1, 'raspberries').map {|i| i.length}
    expect( lengths ).to be == [6, 11, 7, 7, 12, 6]
  end

  it "can create a new array where all the fruit capitalized" do
    new_array = fruit.dup.insert(1, 'raspberries').map {|i| i.upcase}
    expect( new_array ).to be == ["APPLES", "RASPBERRIES", "ORANGES", "BANANAS", "POMEGRANATES", "GRAPES"]
  end

  it "can create a new array that returns only fruits containing a 'g'" do
    new_array = fruit.select { |i| i.index('g')}
    expect( new_array ).to be == ["oranges", "pomegranates", "grapes"]
  end
end
