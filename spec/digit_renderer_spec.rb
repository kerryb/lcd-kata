require "digit_renderer"
require "digit"

describe DigitRenderer do
  describe "#render" do
    it "renders blank lines when segments are false" do
      digit = Digit.new [false, false, false, false, false, false, false]
      expect(subject.render digit).to eq [
        "   ",
        "   ",
        "   ",
        "   ",
        "   ",
      ]
    end

    it "renders the top segment when true" do
      digit = Digit.new [true, false, false, false, false, false, false]
      expect(subject.render digit).to eq [
        " - ",
        "   ",
        "   ",
        "   ",
        "   ",
      ]
    end

    it "renders the top-left segment when true" do
      digit = Digit.new [false, true, false, false, false, false, false]
      expect(subject.render digit).to eq [
        "   ",
        "|  ",
        "   ",
        "   ",
        "   ",
      ]
    end

    it "renders the top-right segment when true" do
      digit = Digit.new [false, false, true, false, false, false, false]
      expect(subject.render digit).to eq [
        "   ",
        "  |",
        "   ",
        "   ",
        "   ",
      ]
    end

    it "renders the middle segment when true" do
      digit = Digit.new [false, false, false, true, false, false, false]
      expect(subject.render digit).to eq [
        "   ",
        "   ",
        " - ",
        "   ",
        "   ",
      ]
    end

    it "renders the bottom-left segment when true" do
      digit = Digit.new [false, false, false, false, true, false, false]
      expect(subject.render digit).to eq [
        "   ",
        "   ",
        "   ",
        "|  ",
        "   ",
      ]
    end

    it "renders the bottom-right segment when true" do
      digit = Digit.new [false, false, false, false, false, true, false]
      expect(subject.render digit).to eq [
        "   ",
        "   ",
        "   ",
        "  |",
        "   ",
      ]
    end

     it "renders the bottom segment when true" do
      digit = Digit.new [false, false, false, false, false, false, true]
      expect(subject.render digit).to eq [
        "   ",
        "   ",
        "   ",
        "   ",
        " - ",
      ]
    end

    it "can render all segments at once" do
      digit = Digit.new [true, true, true, true, true, true, true]
      expect(subject.render digit).to eq [
        " - ",
        "| |",
        " - ",
        "| |",
        " - ",
      ]
    end
  end
end
