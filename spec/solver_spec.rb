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

  describe "#fizzbuzz" do
    it "returns 'fizz' for input 3" do
      expect(solver.fizzbuzz(3)).to eq("fizz")
    end
    it "returns 'buzz' for input 5" do
      expect(solver.fizzbuzz(5)).to eq("buzz")
    end
    it "returns 'fizzbuzz' for input 15" do
      expect(solver.fizzbuzz(15)).to eq("fizzbuzz")
    end
    it "returns '7' for input 7" do
      expect(solver.fizzbuzz(7)).to eq("7")
    end
    it "returns '8' for input 8" do
      expect(solver.fizzbuzz(8)).to eq("8")
    end
  end
end
