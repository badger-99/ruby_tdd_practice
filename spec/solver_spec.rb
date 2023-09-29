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

    it 'returns 1 if the integer passed is 0' do
      solver = Solver.new
      expect(solver.factorial(0)).to be(1)
    end

    it 'raises an exception for negative numbers' do
      solver = Solver.new
      expect { solver.factorial(-1) }.to raise_error(ArgumentError, 'Input must be a non-negative integer')
    end
  end

  describe '#reverse' do
    it 'returns empty string when passed an empty string' do
      solver = Solver.new
      reversed = solver.reverse('')
      expect(reversed).to eql('')
    end

    it 'returns reversed string when passed a string of length 1' do
      solver = Solver.new
      reversed = solver.reverse('A')
      expect(reversed).to eql('A')
    end

    it 'returns reversed string when passed a string of length 2' do
      solver = Solver.new
      reversed = solver.reverse('AB')
      expect(reversed).to eql('BA')
    end

    it 'returns reversed string when passed a string of odd number length' do
      solver = Solver.new
      reversed = solver.reverse('ABCDE')
      expect(reversed).to eql('EDCBA')
    end

    it 'returns reversed string when passed a string of even number length' do
      solver = Solver.new
      reversed = solver.reverse('ABCD')
      expect(reversed).to eql('DCBA')
    end
  end

  describe '#fizzbuzz' do
    it 'takes an integer not divisible by 3 or 5 and returns the integer as a string' do
      solver = Solver.new
      result = solver.fizzbuzz(1)
      expect(result).to eq('1')
    end
  end
end
