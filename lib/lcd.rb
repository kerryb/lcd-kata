require "convertor"
require "renderer"

class Lcd
  def initialize convertor: Convertor.new, renderer: Renderer.new
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
