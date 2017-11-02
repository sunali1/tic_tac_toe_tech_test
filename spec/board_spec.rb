require 'board'

describe Board do
  subject (:board) { described_class.new }

  it "initializes a default empty board with a grid" do
    expect{board.default_grid}.to_not raise_error
  end
end
