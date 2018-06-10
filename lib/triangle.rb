class Triangle
  attr_accessor :a, :b, :c
  def initialize(side_1, side_2, side_3)
    @a = side_1
    @b = side_2
    @c = side_3
  end

  def kind
     if @a >= @b + @c || @b >= @a + @c || @c >= @a + @b
       raise TriangleError
     elsif @a <= 0 || @b <= 0 || @c <= 0
       raise TriangleError
     elsif @a == @b && @b == @c
       :equilateral
     elsif @a == @b || @b == @c || @c == @a
       :isosceles
     else
       :scalene
     end
  end

  class TriangleError < StandardError
    
  end
end
