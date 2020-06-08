class Triangle
  attr_accessor :side1, :side2, :side3
  @sides = []
  # include TriangleError

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    @sides = [side1, side2, side3]
    # include TriangleError
  end
  def kind
    if self.invalid == true
      # begin
       raise TriangleError
      #  rescue TriangleError => error
      #   puts error.message
      # end
    elsif equilateral
      :equilateral
    elsif scalene 
      :scalene
    elsif isosceles
      :isosceles
    end
  end

  def invalid
    @sides.each do |length|
      if length <= 0 || @side1 + @side2 > @side3 && @side1 + @side3 > @side2 && @side2 + @side3 > @side1 
         true
      else
        false
        end
      end
    end
 
    #


    def equilateral
      @side1 == @side2 && @side1 == @side3
    end

    def scalene
      @side1 != @side2 && @side1!= @side3 && @side2 != @side3
    end

    def isosceles
      @side1 == @side2 || @side1 = @side3 || @side2 == @side3
    end

  
end

class TriangleError < StandardError
  def message
   "Side length must be greater than 0.  The sum of two sides must be greater than the third."
  end
end