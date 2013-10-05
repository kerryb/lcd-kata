require "digit"

class Convertor
  def convert number
    segments = {
      0 => [true, true, true, false, true, true, true],
      1 => [false, false, true, false, false, true, false],
      2 => [true, false, true, true, true, false, true],
      3 => [true, false, true, true, false, true, true],
      4 => [false, true, true, true, false, true, false],
      5 => [true, true, false, true, false, true, true],
      6 => [true, true, false, true, true, true, true],
      7 => [true, false, true, false, false, true, false],
      8 => [true, true, true, true, true, true, true],
      9 => [true, true, true, true, false, true, true],
    }[number]
    Digit.new segments
  end
end
