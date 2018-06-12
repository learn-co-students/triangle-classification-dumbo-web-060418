class Triangle
  # write code here

attr_accessor :side1, :side2, :side3
attr_reader :sides

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    @sides = [side1, side2, side3].sort
  end

  def illegal
    if self.sides.any? {|side| side == 0}
      true
    elsif self.sides[0] + self.sides[1] <= self.sides[2]
      true
    else
      false

    end
  end

  def kind
    case
    when self.illegal
      raise TriangleError
    when self.sides.uniq.count == 1
      :equilateral
    when self.sides.uniq.count == 2
      :isosceles
    else
      :scalene
    end
  end
end

class TriangleError < StandardError
  
end
