
require './caesar_cipher'

describe "#caesar_cipher" do
  it "returns input word shifted by one" do
    expect(caesar_cipher("test", 1)).to eql("uftu")
  end

  it "returns input word shifted by five" do
    expect(caesar_cipher("test", 5)).to eql("yjxy")
  end

  it "returns an uppercase shifted word" do
    expect(caesar_cipher("Test", 5)).to eql("Yjxy")
  end

  it "returns a shifted string of words" do
    expect(caesar_cipher("What a string",5)).to eql("Bmfy f xywnsl")
  end

  it "returns a shifted string of words with the same punctuation" do
    expect(caesar_cipher("What a string!?",5)).to eql("Bmfy f xywnsl!?")
  end
end