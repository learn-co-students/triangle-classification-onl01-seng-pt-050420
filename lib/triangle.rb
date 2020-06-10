class Triangle

  class TriangleError < StandardError
  end

  attr_accessor :side_1, :side_2, :side_3

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def kind
    if valid_triangle == true
      puts true
    else
      raise TriangleError
    end

    if side_1 == side_2 && side_2 == side_3 && side_1 == side_3
      :equilateral
    elsif side_1 != side_2 && side_2 != side_3 && side_1 != side_3
      :scalene
    else
      :isosceles
    end 

  end

  def valid_triangle
    (side_1.positive? && side_2.positive? && side_3.positive?) &&
    (side_1 + side_2 > side_3 && side_1 + side_3 > side_2 && side_2 + side_2 > side_1)
  end

end
