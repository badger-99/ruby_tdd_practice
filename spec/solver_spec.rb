require './solver'

describe Solver do
  describe '#new' do
    it 'creates a new Solver object' do
      solver = Solver.new()
      expect(solver).to be_an_instance_of(Solver)
    end
  end
end
