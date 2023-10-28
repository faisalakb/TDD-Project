require_relative '../solver.rb'

describe Solver do
  before(:each) do
    @solver = Solver.new
  end

  describe '#factorial' do
    it 'returns 1 for input 0' do
      expect(@solver.factorial(0)).to eq(1)
    end

end
