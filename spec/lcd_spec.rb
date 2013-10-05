require "lcd"

describe Lcd do
  it "can display 0" do
    expect(subject.display 0).to eq <<-EOF
 - 
| |
   
| |
 - 
    EOF
  end

  it "can display 1" do
    expect(subject.display 1).to eq <<-EOF
   
  |
   
  |
   
    EOF
  end
end
