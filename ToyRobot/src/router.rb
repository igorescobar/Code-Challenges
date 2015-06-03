class Router

  attr_accessor :x, :y, :facing

  @@x_range = (0..4)
  @@y_range = (0..4)


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

  def next_route
    next_x = @x + self.send(@facing)[:x]
    next_y = @y + self.send(@facing)[:y]

    [ valid_range!(next_x, @@x_range) , valid_range!(next_y, @@y_range) ]
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

  def valid_range!(n, range)
    n = range.last if n > range.last
    n = range.first if n < range.first
    n
  end

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
