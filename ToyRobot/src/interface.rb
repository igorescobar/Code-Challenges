class Interface

  def place(x, y, orientation)
    self.x = x
    self.y = y
    self.orientation = orientation
  end

  def left(router=self.router)
    self.orientation = router.turn_left
  end

  def right(router=self.router)
    self.orientation = router.turn_right
  end

  def report
  end

  def move
  end
end
