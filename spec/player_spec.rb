require 'player'

describe Player do

  it "raises an expection when initialized with {}" do
    expect{ Player.new({}) }.to raise_error
  end
  it "does not raise an error when initialized with a valid input hash" do
    input = {colour: 'X', name: "Bo"}
    expect{ Player.new(input) }.to_not raise_error
  end
  it "returns an input of colour 'X'" do
    input = {colour: 'X', name: "Bo"}
    player = Player.new(input)
    expect( player.colour ).to eq 'X'
  end
  it "returns an input of name 'Bo'" do
    input = {colour: 'X', name: "Bo"}
    player = Player.new(input)
    expect(player.name).to eq 'Bo'
  end
end
