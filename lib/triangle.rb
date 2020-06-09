class Triangle
  # write code here

  def initialize (length_one, length_two, length_three)
    # each argument is a length of one of the three sides of the triangle.
    @length_one = length_one
    @length_two = length_two
    @length_three = length_three
  end

  def kind
    #returns, as a symbol, its type. The valid types are: :equilateral, :isosceles, :scalene
    if @length_one + @length_two <= @length_three || @length_one + @length_three <= @length_two || @length_two + @length_three <= @length_one || @length_one <= 0 || @length_two <= 0 || @length_three <= 0
        raise TriangleError
    elsif
      @length_one == @length_two && @length_two == @length_three
      :equilateral
    elsif @length_one == @length_two || @length_one == @length_three || @length_two == @length_three
      :isosceles
    else  
      :scalene
    end
  end

  class TriangleError < StandardError
  end

end