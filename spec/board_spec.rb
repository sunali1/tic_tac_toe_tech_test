require 'board'

describe Board do

  it "initializes the Board with a grid" do
    expect{ Board.new(grid: "grid") }.to_not raise_error
  end

  it "returns a user specified grid" do
    board = Board.new(grid: 'test')
    expect(board.grid).to eq 'test'
  end

  it "gets the Cell input on a given grid" do
    grid = [['', '', 'test'],['', '', ''],['', '', '']]
    board = Board.new(grid: grid)
    expect(board.get_cell_input(0,2)).to eq 'test'
  end

  it "sets a value for the Cell at a (x,y) coordinate on a grid" do
    cell = Cell.new(:value)
    grid = [['', '', ''],['', Cell.new('test'), ''],['', '', '']]
    board = Board.new(grid: grid)
    board.set_cell_input(1,1, 'X')
    expect(board.get_cell_input(1,1).value).to eq 'X'
  end

  it "declares game is over and a winner" do
    board = Board.new
    allow(board).to receive(:game_over).and_return(:winner)
    expect(board.game_over).to eq :winner
  end
  it "declares game is over and a draw" do
    board = Board.new
    allow(board).to receive(:game_over).and_return(:draw)
    expect(board.game_over).to eq :draw
  end
  it "checks if grid is empty and returns true or false" do
    cell = Cell.new(:value)
    grid = [['', '', ''],['', Cell.new('X'), ''],['', '', '']]
    board = Board.new(grid: grid)
    expect(board.all_empty?).to be false
  end
end
