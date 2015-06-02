require "./src/reporter.rb"
require "./src/interface.rb"
require "./src/router.rb"
require "byebug"

class Robot < Interface

  attr_reader :facing
  attr_accessor :x, :y, :facing, :router

  def initialize(x = 0, y = 0, facing = :north, router=Router)
    @x = x
    @y = y
    @router = router.new @x, @y, facing
    @facing = @router.facing
    @directions = @router.directions
  end

end
