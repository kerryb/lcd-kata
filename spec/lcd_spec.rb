require "lcd"

describe Lcd do
  subject { Lcd.new convertor: convertor, renderer: renderer }
  let(:convertor) { double :convertor }
  let(:renderer) { double :renderer }

  describe "#display" do
    it "converts and renders each digit" do
      convertor.stub(:convert).with(1) { "foo" }
      convertor.stub(:convert).with(2) { "bar" }
      renderer.stub(:render).with(%w{foo bar}) { "output" }
      expect(subject.display 12).to eq "output"
    end
  end
end
