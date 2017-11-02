require_relative 'cell'

class Board

  def default_grid

    Array.new(3) { Array.new(3) { Cell.new } }

  end

end
