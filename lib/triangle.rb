class Triangle
  attr_accessor :one, :two, :three

  def initialize(one, two, three)
  	@one = one
  	@two = two
  	@three = three
  end

	def kind
		if @one >= @two + @three || @two >= @one + @three || @three >= @one + two
			begin 
				raise TriangleError
			end
		elsif @one <= 0 || @two <= 0 || @three <= 0
			begin
				raise TriangleError
			end
		elsif one == two && two == three
			:equilateral
		elsif one == two || two == three || one == three
			:isosceles
		else
			:scalene
		end
	end

class TriangleError < StandardError
		
end
end

