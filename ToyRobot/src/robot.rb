require "./src/reporter.rb"
require "./src/interface.rb"
require "./src/router.rb"
require "./src/router.rb"
require "byebug"

class Robot < Interface

  attr_reader :facing
  attr_accessor :x, :y, :facing, :router

  def initialize(x = 0, y = 0, facing = :north, router=Router)
    @router = router.new x, y, facing
    @facing = @router.facing
    @x = @router.x
    @y = @router.y
    @directions = @router.directions
  end

  def x
    @router.x
  end

  def y
    @router.y
  end

  def facing
    @router.facing
  end

end
