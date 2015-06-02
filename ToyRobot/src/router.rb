class Router

  attr_accessor :facing

  def initialize(x, y, facing)
    @x = x
    @y = y
    @facing = facing
  end

  def directions
    [:north, :east, :south, :west]
  end

  def facing=(facing)
    @facing = facing if directions.include? facing
  end

  def calculate
    [
      @x + self.call(@facing)[:x],
      @y + self.call(@facing)[:y]
    ]
  end

  def turn_left
    index = directions.index self.facing
    direction = directions[index - 1] || directions.last
    self.facing = direction
  end

  def turn_right
    index = directions.index self.facing
    direction = directions[index + 1] || directions.first
    self.facing = direction
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
