require './solver'

describe Solver do
  describe '#new' do
    it 'creates a new Solver object' do
      solver = Solver.new
      expect(solver).to be_an_instance_of(Solver)
    end
  end

  describe '#factorial' do
    it 'takes an integeter and returns the factorial of that number' do
      solver = Solver.new
      expect(solver.factorial(10)).to be(3_628_800)
    end

    it 'returns 0 if the integer passed is 0' do
      solver = Solver.new
      expect(solver.factorial(0)).to be(0)
    end

    it 'raises an exception for negative numbers' do
      solver = Solver.new
      expect { solver.factorial(-1) }.to raise_error(ArgumentError, 'Input must be a non-negative integer')
    end
  end
end
