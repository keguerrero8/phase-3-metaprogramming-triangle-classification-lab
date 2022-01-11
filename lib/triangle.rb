class Triangle
  # write code here
  def initialize side1, side2, side3
    @side1 = side1
    @side2 = side2
    @side3 = side3
    @side_array = [side1, side2, side3]
  end

  def kind
    if @side1 <= 0 || @side2 <= 0
      raise TriangleError
    elsif @side3 <= 0
      raise TriangleError
    elsif @side_array.max >= @side_array.sum - @side_array.max
      raise TriangleError
    else
      if @side1 == @side2 && @side2 == @side3
        :equilateral
      elsif @side1 == @side2 || @side2 == @side3
        :isosceles
      elsif @side1 == @side3
        :isosceles
      elsif @side1 != @side2 && @side2 != @side3
        :scalene
      end
    end

  end

  class TriangleError < StandardError
    # triangle error code
  end

end
