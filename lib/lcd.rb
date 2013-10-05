class Lcd
  def display number
    number.zero? ? " - \n| |\n   \n| |\n - \n" : "   \n  |\n   \n  |\n   \n"
  end
end
