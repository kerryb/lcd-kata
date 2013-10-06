require "renderer"

describe Renderer do
  subject { Renderer.new digit_renderer: digit_renderer }
  let(:digit_renderer) { double :digit_renderer }
  let(:digit_1) { double :digit_1 }
  let(:digit_2) { double :digit_2 }
  let(:size) { 2 }

  it "renders each digit, and joins the lines together" do
    digit_renderer.stub(:render).with(digit_1) { %w[A a] }
    digit_renderer.stub(:render).with(digit_2) { %w[B b] }
    expect(subject.render [digit_1, digit_2]).to eq "A B\na b\n"
  end
end
