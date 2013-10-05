require "lcd"

DIGITS = <<EOF.gsub(".", " ").lines.each_slice(5).map(&:join)
.-.
|.|
...
|.|
.-.
...
..|
...
..|
...
EOF

describe Lcd do
  DIGITS.each_with_index do |expected, digit|
    it "can display #{digit}" do
      expect(subject.display digit).to eq expected
    end
  end
end
