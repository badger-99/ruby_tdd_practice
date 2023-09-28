require './solver'

describe Solver do
  describe '#new' do
    it 'creates a new Solver object' do
      solver = Solver.new()
      expect(solver).to be_an_instance_of(Solver)
    end
  end

  describe '#factorial' do
    it 'takes an integeter and returns the factorial of that number' do
      solver = Solver.new()
      expect(solver.factorial(10)).to be(3_628_800)
    end
  end
end
