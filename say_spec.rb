# Given a number from 0 to 999,999,999,999, spell out that number in English.
# 
# Step 1
# Handle the basic case of 0 through 99.
# 
# If the input to the program is 22, then the output should be 'twenty-two'.
# 
# Your program should complain loudly if given a number outside the blessed range.
# 
# Some good test cases for this program are:
# 
# 0
# 14
# 50
# 98
# -1
# 100
require_relative 'say'
require 'pry'

describe Say do
  subject { Say.new(number) }
  describe '#speak' do
    context 'when the number is 0' do
      it 'translates 0 to zero' do
        say = Say.new(0)
        expect(say.speak).to eq('zero')
      end
    end
    context 'when the number is 14' do
      it 'translates the number properly' do
        expect(Say.new(14).speak).to eq('fourteen')
      end
    end
    context 'when the number is 50' do
      it 'translates the number properly' do
        expect(Say.new(50).speak).to eq('fifty')
      end
    end
    context 'when the number is 98' do
      it 'translates the number properly' do
        expect(Say.new(98).speak).to eq('ninety-eight')
      end
    end
    context 'when the number is -1' do
      it 'raises an exception' do
        expect { Say.new(-1).speak }.to raise_error(RangeError)
      end
    end
    context 'when the number is 100' do
      it 'raises an exception' do
        expect { Say.new(100).speak }.to raise_error(RangeError)
      end
    end
    context 'when the number is 1-9' do
      it 'translates the number properly' do
        expect(Say.new(1).speak).to eq('one')
        expect(Say.new(2).speak).to eq('two')
        expect(Say.new(3).speak).to eq('three')
        expect(Say.new(4).speak).to eq('four')
        expect(Say.new(5).speak).to eq('five')
        expect(Say.new(6).speak).to eq('six')
        expect(Say.new(7).speak).to eq('seven')
        expect(Say.new(8).speak).to eq('eight')
        expect(Say.new(9).speak).to eq('nine')
      end
    end
    context 'when the number is 10-19' do
      it 'translates the number properly' do
        expect(Say.new(10).speak).to eq('ten')
        expect(Say.new(11).speak).to eq('eleven')
        expect(Say.new(12).speak).to eq('twelve')
        expect(Say.new(13).speak).to eq('thirteen')
        expect(Say.new(14).speak).to eq('fourteen')
        expect(Say.new(15).speak).to eq('fifteen')
        expect(Say.new(16).speak).to eq('sixteen')
        expect(Say.new(17).speak).to eq('seventeen')
        expect(Say.new(18).speak).to eq('eighteen')
        expect(Say.new(19).speak).to eq('nineteen')
      end
    end
    context 'when the number is 20-29' do
      it 'translates the number properly' do
        expect(Say.new(20).speak).to eq('twenty')
        expect(Say.new(21).speak).to eq('twenty-one')
        expect(Say.new(22).speak).to eq('twenty-two')
        expect(Say.new(23).speak).to eq('twenty-three')
        expect(Say.new(24).speak).to eq('twenty-four')
        expect(Say.new(25).speak).to eq('twenty-five')
        expect(Say.new(26).speak).to eq('twenty-six')
        expect(Say.new(27).speak).to eq('twenty-seven')
        expect(Say.new(28).speak).to eq('twenty-eight')
        expect(Say.new(29).speak).to eq('twenty-nine')
      end
    end
    context 'when the number is 30-39' do
      it 'translates the number properly' do
        expect(Say.new(30).speak).to eq('thirty')
        expect(Say.new(31).speak).to eq('thirty-one')
        expect(Say.new(32).speak).to eq('thirty-two')
        expect(Say.new(33).speak).to eq('thirty-three')
        expect(Say.new(34).speak).to eq('thirty-four')
        expect(Say.new(35).speak).to eq('thirty-five')
        expect(Say.new(36).speak).to eq('thirty-six')
        expect(Say.new(37).speak).to eq('thirty-seven')
        expect(Say.new(38).speak).to eq('thirty-eight')
        expect(Say.new(39).speak).to eq('thirty-nine')
      end
    end
  end
end
