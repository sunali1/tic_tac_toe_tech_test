require_relative 'cell'
require_relative 'player'

class Board

attr_reader :grid
  def initialize(input = {})
    @grid = input.fetch(:grid, default_grid)
  end

  def default_grid
    Array.new(3) { Array.new(3){ Cell.new } }
  end

  def get_cell_input(x,y)
    grid[x][y]
  end

  def set_cell_input(x, y, value)
    get_cell_input(x, y).value = value
  end

  def game_over
    return :winner if winner?
    return :draw if draw?
    false
  end



end
