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

  # triangle code
 
  class TriangleError < StandardError
    def message
      "A triangle cannot have a side that is 0.  A triangle cannot also cannot have 2 sides whose sum is less than or equal to the third side."
    end
  end
end