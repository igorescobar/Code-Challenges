require "./src/interface.rb"
require "./src/router.rb"
require "byebug"

class Robot < Interface

  attr_reader :orientation
  attr_accessor :x, :y, :router

  def initialize(x = 0, y = 0, orientation = :north, router=Router)
    @x = x
    @y = y
    @orientation = orientation
    @router = router.new @x, @y, @orientation
    @directions = @router.directions
  end

  def orientation=(orientation)
    @orientation = orientation if @directions.include? orientation
  end
end
