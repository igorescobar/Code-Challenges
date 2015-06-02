require "./src/interface.rb"
require "./src/router.rb"
require "byebug"

class Robot < Interface

  attr_reader :facing
  attr_accessor :x, :y, :router

  def initialize(x = 0, y = 0, facing = :north, router=Router)
    @x = x
    @y = y
    @facing = facing
    @router = router.new @x, @y, @facing
    @directions = @router.directions
  end

  def facing=(facing)
    @facing = facing if @directions.include? facing
  end
end
