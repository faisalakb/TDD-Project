require_relative '../solver.rb'

describe Solver do
  before(:each) do
    @solver = Solver.new
  end
  describe '#factorial' do
    it 'returns 1 for input 0' do
      expect(@solver.factorial(0)).to eq(1)
    end
    it 'returns the correct factorial for positive integers' do
      expect(@solver.factorial(1)).to eq(1)
      expect(@solver.factorial(2)).to eq(2)
      expect(@solver.factorial(3)).to eq(6)
      expect(@solver.factorial(4)).to eq(24)
    end
    it 'raises an exception for negative input' do
      expect { @solver.factorial(-5) }.to raise_error(ArgumentError)
    end
  end
  describe '#reverse' do
    it 'returns the reversed string' do
      expect(@solver.reverse('hello')).to eq('olleh')
      expect(@solver.reverse('world')).to eq('dlrow')
      expect(@solver.reverse('')).to eq('')
    end
  end
  describe '#fizzbuzz' do
    it 'returns "fizz" when input is divisible by 3' do
      expect(@solver.fizzbuzz(3)).to eq('fizz')
    end
    it 'returns "buzz" when input is divisible by 5' do
      expect(@solver.fizzbuzz(5)).to eq('buzz')
    end
    it 'returns "fizzbuzz" when input is divisible by both 3 and 5' do
      expect(@solver.fizzbuzz(15)).to eq('fizzbuzz')
    end
    it 'returns the number as a string for other cases' do
      expect(@solver.fizzbuzz(7)).to eq('7')
    end
  end
end
