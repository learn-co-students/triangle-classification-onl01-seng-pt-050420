class Triangle
  attr_reader :side1, :side2, :side3
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    sides = []
    sides << side1
    sides << side2
    sides << side3
    raise TriangleError if sides.include?(0)
  end
  
  def kind 
    if valid 
      name_triangle 
    else
      raise TriangleError     
    end
  end
  
  def name_triangle
    if @side1 == @side2 && @side2 == @side3
     :equilateral
     elsif @side1 == @side2 || @side1 == @side3 || @side2 == @side3
        :isosceles
     else 
      :scalene
     end
  end
    
  def valid
    (@side1 + @side2 > @side3) && (@side1 + @side3 > @side2) && (@side3 + @side2 > @side1)
  end
  
  class TriangleError < StandardError 
  end
end
