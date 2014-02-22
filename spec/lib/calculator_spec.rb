require './lib/calculator'

describe Calculator do

  describe ".total" do
    it "should be 0 on a new Calculator" do
      expect(subject.total).to eq(0)
    end
  end

  describe ".add" do
    it "should add a number to the total" do
      subject.add(5)
      expect(subject.total).to eq(5)
    end
    it "should handle multiple calls to add" do
      subject.add(5).add(2)
      expect(subject.total).to eq(7)
    end
    it "should handle negative numbers" do
      subject.add(-2)
      expect(subject.total).to be(-2)
    end
    it "should handle floats" do
      subject.add(2.5)
      expect(subject.total).to eq(2.5)
    end
  end

  describe ".subtract" do
    it "should subtract a number from the total" do
      subject.subtract(5)
      expect(subject.total).to eq(-5)
    end
    it "should handle multiple calls to subtract" do
      subject.subtract(2).subtract(5)
      expect(subject.total).to eq(-7)
    end
    it "should handle negative numbers" do
      subject.subtract(-5)
      expect(subject.total).to eq(5)
    end
    it "should handle floats" do
      subject.subtract(2.5)
      expect(subject.total).to eq(-2.5)
    end
  end
end
