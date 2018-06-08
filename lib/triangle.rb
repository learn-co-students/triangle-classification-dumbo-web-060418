require "pry"

class Triangle

  attr_accessor :sides, :length1, :length2, :length3

  def initialize(length1, length2, length3)
    @length1=length1
    @length2=length2
    @length3=length3
    @sides = []
    @sides << length1 << length2 << length3
  end

    def kind
      if self.sides.all? {|number| number > 0} == true && self.sides[0] + self.sides[1] > self.sides[2] && self.sides[1] + self.sides[2] > self.sides[0] && self.sides[0] + self.sides[2] > self.sides[1]
          if self.sides.uniq.count == 1
          :equilateral
        elsif
          self.sides.uniq.count == 2
          :isosceles
        elsif
          self.sides.uniq.count == 3
        :scalene
      end
    else
      begin
        raise TriangleError
      end
    end
  end
end

    class TriangleError < StandardError
      def message
        "That's not a triangle!"
      end
    end
