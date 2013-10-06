require "digit_renderer"

class Renderer
  def initialize size: 1, digit_renderer: DigitRenderer.new(size: size)
    @digit_renderer = digit_renderer
  end

  def render digits
    rendered_digits = digits.map {|digit| @digit_renderer.render digit }
    "#{rendered_digits.transpose.map {|line| line.join " " }.join "\n"}\n"
  end
end
