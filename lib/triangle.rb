class Triangle
  
  attr_accessor :side_1, :side_2, :side_3
  
  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end
  
  def kind 
    sides = [side_1, side_2, side_3]
    ineq = [side_1+side_2 > side_3, side_1+side_3 > side_2, side_2+side_3 > side_1]
    
    if sides.min <= 0 || ineq.include?(false)
      raise TriangleError 
    end
    
    if side_1 == side_2 && side_2 == side_3
      :equilateral
    elsif side_1 != side_2 && side_1 != side_3 && side_2 != side_3
      :scalene
    elsif (side_1 == side_2 && side_2 != side_3) || (side_2 == side_3 && side_3 != side_1) || (side_1 == side_3 && side_3 != side_2)
      :isosceles
    end
  end
  
  class TriangleError < StandardError
end
end