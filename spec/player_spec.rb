require 'player'

describe Player do

  it "raises an expection when initialized with {}" do
    expect{ Player.new({}) }.to raise_error
  end

end
