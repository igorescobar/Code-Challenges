require File.join File.dirname(__FILE__), '../src/robot'

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
    subject(:robot) { Robot.new }
    context "one move" do
      it "it should move towards router configuration" do
        robot.move
        expect(robot.x).to be 0
        expect(robot.y).to be 1
        expect(robot.facing).to be :north
      end
    end

    context "two moves" do
      it "it should move towards router configuration" do
        robot.move
        robot.move
        expect(robot.x).to be 0
        expect(robot.y).to be 2
        expect(robot.facing).to be :north
      end
    end
  end

  context "#report" do
    subject(:robot) { Robot.new }
    it "should tell robot's current position" do
      expect(capture_stdout { robot.report }).to eq "0,0,NORTH\n"

    end

    it "should change place and report" do
      robot.place 1, 2, :east
      robot.right
      expect(capture_stdout { robot.report }).to eq "1,2,SOUTH\n"
    end
  end

  context "provided use case scenarios #1" do
    subject(:robot) { Robot.new }
    it "should be at 0,1,NORTH" do
      robot.place 0, 0, :north
      robot.move
      expect(capture_stdout { robot.report }).to eq "0,1,NORTH\n"
    end
  end

  context "provided use case scenarios #2" do
    subject(:robot) { Robot.new }
    it "should be at 0,0,WEST" do
      robot.place 0, 0, :north
      robot.left
      expect(capture_stdout { robot.report }).to eq "0,0,WEST\n"
    end
  end

  context "provided use case scenarios #3" do
    subject(:robot) { Robot.new }
    it "should be at 3,3,NORTH" do
      robot.place 1, 2, :east
      robot.move
      robot.move
      robot.left
      robot.move
      expect(capture_stdout { robot.report }).to eq "3,3,NORTH\n"
    end
  end
end
