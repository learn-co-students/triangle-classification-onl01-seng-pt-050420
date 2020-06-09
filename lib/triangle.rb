

class Triangle
  attr_accessor :side1, :side2, :side3
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  
def valid
  
  if !(side3 < side1 + side2) || !(side2 < side1 + side3) || !(side1 < side2 + side3)
    raise TriangleError
  end
end

  def kind
    valid
    if side1 == side2 && side1 == side3 
      return :equilateral
      elsif side1 == side2 || side2 == side3 || side1 == side3
      return :isosceles
    else
      # side1 != side2 && side1 != side3 && side2 != side3
      return :scalene
    end
    end

  
class TriangleError < StandardError
end
end