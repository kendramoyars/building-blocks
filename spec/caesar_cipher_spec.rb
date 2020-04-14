require './caesar_cipher'

describe "#caesar_cipher" do
  it "returns the manipulated string by the num of offset characters" do
    expect(caesar_cipher("What a string!", 5)).to eql("Bmfy f xywnsl!")
  end

  it "returns the same case, symbol" do
    expect(caesar_cipher("WhaT a STRinG!", 5)).to eql("BmfY f XYWnsL!")
  end

  it "able to wrap" do
    expect(caesar_cipher("What is up man!", 28)).to eql("Yjcv ku wr ocp!")
  end

  it "goes backwards keeps numbers" do
    expect(caesar_cipher("COVID-19", -5)).to eql("XJQDY-19")
  end
end