class Interface

  def place(x, y, facing)
    self.x = x
    self.y = y
    self.facing = facing
  end

  def left(router=self.router)
    self.facing = router.turn_left
  end

  def right(router=self.router)
    self.facing = router.turn_right
  end

  def report
  end

  def move
  end
end
