require "./src/robot.rb"

describe Robot do
  context "default position" do
    subject(:robot) { Robot.new }
    it { expect(robot.x).to be 0 }
    it { expect(robot.y).to be 0 }
    it { expect(robot.facing).to be :north }
  end

  context "#place" do
    subject(:robot) { Robot.new }
    it "should change place" do
      robot.place 1, 2, :east
      expect(robot.x).to be 1
      expect(robot.y).to be 2
      expect(robot.facing).to be :east
    end
  end

  context "#right" do
    subject(:robot) { Robot.new }
    it "should change rotate 90 degrees clock-wise" do
      expect(robot.facing).to be :north
      robot.right
      expect(robot.facing).to be :east
      robot.right
      expect(robot.facing).to be :south
      robot.right
      expect(robot.facing).to be :west
      robot.right
      expect(robot.facing).to be :north
      robot.right
      expect(robot.facing).to be :east
    end
  end

  context "#left" do
    subject(:robot) { Robot.new }
    it "should change rotate 90 degrees counter clock-wise" do
      expect(robot.facing).to be :north
      robot.left
      expect(robot.facing).to be :west
      robot.left
      expect(robot.facing).to be :south
      robot.left
      expect(robot.facing).to be :east
      robot.left
      expect(robot.facing).to be :north
      robot.left
      expect(robot.facing).to be :west
    end
  end

  context "#left and #right at the same context" do
    subject(:robot) { Robot.new }

    it "should make right and then left" do
      robot.right
      expect(robot.facing).to be :east
      robot.left
      expect(robot.facing).to be :north
    end
  end

  context "#move" do
    it "it should move towards router configuration"
  end

  context "#report" do
    it "should tell robot's current position"
  end
end
