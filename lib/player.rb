class Player
  attr_accessor :colour, :name

  def initialize(input)
    @colour = input.fetch(:colour)
    @name = input.fetch(:name)
  end



end
