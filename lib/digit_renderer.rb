class DigitRenderer
  def render digit
    top = digit.segments[0] ? "-" : " "
    top_left = digit.segments[1] ? "|" : " "
    top_right = digit.segments[2] ? "|" : " "
    middle = digit.segments[3] ? "-" : " "
    bottom_left = digit.segments[4] ? "|" : " "
    bottom_right = digit.segments[5] ? "|" : " "
    bottom  = digit.segments[6] ? "-" : " "

    [
      " #{top} ",
      "#{top_left} #{top_right}",
      " #{middle} ",
      "#{bottom_left} #{bottom_right}",
      " #{bottom} ",
    ]
  end
end
