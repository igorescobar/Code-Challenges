class Interface

  def place(x, y, facing, router=self.router)
    router.x = x
    router.y = y
    router.facing = facing
  end

  def left(router=self.router)
    self.facing = router.turn_left
  end

  def right(router=self.router)
    self.facing = router.turn_right
  end

  def report(router=self.router, reporter=Reporter)
    reporter.new(router).report
  end

  def move
  end

end
