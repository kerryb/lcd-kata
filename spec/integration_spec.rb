require "lcd"

describe Lcd do
  it "can display a single digit" do
    expect(subject.display 0).to eq <<-EOF.gsub ".", " "
.-.
|.|
...
|.|
.-.
    EOF
  end

  it "can display a bunch of digits" do
    expect(subject.display 1234567890).to eq <<-EOF.gsub ".", " "
.....-...-.......-...-...-...-...-...-.
..|...|...|.|.|.|...|.....|.|.|.|.|.|.|
.....-...-...-...-...-.......-...-.....
..|.|.....|...|...|.|.|...|.|.|...|.|.|
.....-...-.......-...-.......-...-...-.
    EOF
  end

  it "accepts a size option" do
    lcd = Lcd.new size: 2
    expect(lcd.display 123).to eq <<-EOF.gsub ".", " "
.... .--. .--.
...| ...| ...|
...| ...| ...|
.... .--. .--.
...| |... ...|
...| |... ...|
.... .--. .--.
    EOF
  end
end
