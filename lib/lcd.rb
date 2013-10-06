require "convertor"
require "renderer"

class Lcd
  def initialize size: 1, convertor: Convertor.new, renderer: Renderer.new(size: size)
    @convertor, @renderer = convertor, renderer
  end

  def display number
    digits = split number
    @renderer.render digits.map {|digit| @convertor.convert digit }
  end

  private

  def split number
    number.to_s.chars.map(&:to_i)
  end
end
