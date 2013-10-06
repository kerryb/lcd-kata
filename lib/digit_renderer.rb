class DigitRenderer
  def initialize size: 1
    @size = size
  end

  def render digit
    top = digit.segments[0] ? "-" : " "
    top_left = digit.segments[1] ? "|" : " "
    top_right = digit.segments[2] ? "|" : " "
    middle = digit.segments[3] ? "-" : " "
    bottom_left = digit.segments[4] ? "|" : " "
    bottom_right = digit.segments[5] ? "|" : " "
    bottom  = digit.segments[6] ? "-" : " "

    [
      " #{top * @size} ",
      ["#{top_left}#{" " * @size}#{top_right}"] * @size,
      " #{middle * @size} ",
      ["#{bottom_left}#{" " * @size}#{bottom_right}"] * @size,
      " #{bottom * @size} ",
    ].flatten
  end
end
