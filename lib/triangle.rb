class Triangle
  attr_accessor :equilateral, :isosceles, :scalene

  def initialize(first_side, second_side, third_side)
    @first_side = first_side
    @second_side = second_side
    @third_side = third_side
  end

  def violates_triangle_equality
    if @first_side <= 0 || @second_side <= 0 || @third_side <= 0
      raise TriangleError
    elsif @first_side + @second_side <= @third_side || @first_side + @third_side <= @second_side || @second_side + @third_side <= @first_side
      raise TriangleError
    end
  end

  def kind
    violates_triangle_equality
    if @first_side == @second_side && @first_side == @third_side
      :equilateral
    elsif @first_side == @second_side || @second_side == @third_side || @first_side == @third_side
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError
    def message
      "The sum of the lengths of any two sides of a triangle always exceeds the length of the third side."
    end
  end
  
end
