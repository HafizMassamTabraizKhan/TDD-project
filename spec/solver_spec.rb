require_relative '../solver'

describe Solver do
  let(:solver) { Solver.new }

  describe '#factorial' do
    it 'returns 1 for input 0' do
      expect(solver.factorial(0)).to eq(1)
    end

    it 'returns 1 for input 1' do
      expect(solver.factorial(1)).to eq(1)
    end

    it 'returns 120 for input 5' do
      expect(solver.factorial(5)).to eq(120)
    end

    it 'returns 3628800 for input 10' do
      expect(solver.factorial(10)).to eq(3_628_800)
    end

    it 'raises an ArgumentError for negative input' do
      expect { solver.factorial(-5) }.to raise_error(ArgumentError)
    end
  end

  describe '#reverse' do
    it "reverses the word 'hello' to 'olleh'" do
      expect(solver.reverse('hello')).to eq('olleh')
    end

    it "reverses the word 'world' to 'dlrow'" do
      expect(solver.reverse('world')).to eq('dlrow')
    end
  end
end
