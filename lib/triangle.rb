class Triangle

  attr_reader :s1, :s2, :s3, :sides

  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
    @sides = [@s1, @s2, @s3]
  end

  def kind
    if @sides.any? { |side| side <= 0 }
      begin
        raise TriangleError
      end
    elsif @sides.any? { |side| side >= (@sides.reduce(:+) - side) }
      begin
        raise TriangleError
      end
    elsif @s1 == @s2 && @s1 == @s3
      return :equilateral
    elsif @s1 == @s2 || @s1 == @s3 || @s2 == @s3
      return :isosceles
    else
      return :scalene
    end
  end


  class TriangleError < StandardError
  end
end
