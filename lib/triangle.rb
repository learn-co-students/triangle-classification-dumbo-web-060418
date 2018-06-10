class Triangle
  # write code here

  attr_accessor :l1, :l2, :l3, :kind

  def initialize(l1, l2, l3)
    @l1 = l1
    @l2 = l2
    @l3 = l3
    @kind = ""

  end

  def kind


    if [@l1,@l2,@l3].any? {|x| x <= 0}
        raise TriangleError, "Sides must have positive length"
    end

    sides = [@l1, @l2, @l3].sort

    unless sides[0]+sides[1] > sides[2]
      raise TriangleError, "Does not satisfy triangle inequality"
    end
    # if @l1 <= 0 || @l2 <= 0|| @l3 <= 0
    #   begin
    #     raise TriangleError
    #   rescue TriangleError => error
    #     puts error.message1
    #   end

    if l1 == l2 && l2 == l3
      self.kind = :equilateral
    elsif ((l1 == l2) || (l1 == l3) || (l2 == l3))
      self.kind = :isosceles
    else
      self.kind = :scalene
    # elsif
    end
  end

end

class TriangleError < StandardError
  def message1
    puts "Illegal triangle."
  end
end
