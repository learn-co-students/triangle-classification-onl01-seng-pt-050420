class Triangle
  attr_accessor :one, :two, :three
  
  def initialize (one, two, three)
    @one = one
    @two = two
    @three = three
  end
    
  class TriangleError < StandardError
    def message
      "Side length must be greater than 0. The sum of two sides must be greater than the third."
    end
  end
    
  def kind
    if @one <= 0 || @two <= 0 || @three <= 0
      begin
        raise TriangleError
        message
      end
    elsif @one == nil || @two == nil || @three == nil
      begin
        raise TriangleError 
        message
      end
    elsif @one + @two <= @three || @one + @three <= @two || @three + @two <= @one
      begin
        raise TriangleError
        message
      end
    end
        
    if @one == @two && @one == @three
      :equilateral
    elsif @one == @two || @one == @three || @two == @three
      :isosceles
    else
      :scalene
    end
  end
end