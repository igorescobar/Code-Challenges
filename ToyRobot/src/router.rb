class Router

  attr_accessor :orientation

  def initialize(x, y, orientation)
    @x = x
    @y = y
    @orientation = orientation
  end

  def directions
    [:north, :east, :south, :west]
  end

  def calculate
    [
      @x + self.call(@orientation)[:x],
      @y + self.call(@orientation)[:y]
    ]
  end

  def turn_left
    index = directions.index self.orientation
    direction = directions[index - 1] || directions.last
    self.orientation = direction
  end

  def turn_right
    index = directions.index self.orientation
    direction = directions[index + 1] || directions.first
    self.orientation = direction
  end

  private

  def north
    {x: 0, y: 1}
  end

  def south
    {x: 0, y: -1}
  end

  def west
    {x: -1, y: 0}
  end

  def east
    {x: 1, y: 0}
  end
end
