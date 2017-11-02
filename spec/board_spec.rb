require 'board'

describe Board do

  it "initializes the Board with a grid" do
    expect{ Board.new(grid: "grid") }.to_not raise_error
  end

  it "returns a user specified grid" do
    board = Board.new(grid: 'test')
    expect(board.grid).to eq 'test'
  end
end
