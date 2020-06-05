class Triangle
  # write code here
  
  
  def initialize(side1, side2, side3)
    @sides = []
    @sides.push(side1)
    @sides.push(side2)
    @sides.push(side3)
  end
  
  def legal?
    one_two = @sides[0] + @sides[1]
    two_three = @sides[1] + @sides[2]
    one_three = @sides[0] + @sides[2]
    
    if (@sides.none? {|side| side <= 0}) && (one_two > @sides[2] && one_three > @sides[1] && two_three > @sides[0])
      return true
    else
      return false
    end
  end
  
  def kind
    if legal?
      if @sides[0] == @sides[1] && @sides[0] == @sides[2] 
        :equilateral
      elsif @sides[0] == @sides[1] || @sides[0] == @sides[2] || @sides[1] == @sides[2] 
        :isosceles
      elsif @sides[0] != @sides[1] && @sides[0] != @sides[2] 
        :scalene
      end
    else
      raise TriangleError
    end
      
  end
  
    class TriangleError < StandardError
    end
  
end
