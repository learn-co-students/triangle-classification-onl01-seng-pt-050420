class Triangle
  attr_accessor :length_one, :length_two, :length_three

  def initialize(length_one, length_two, length_three)
    @length_one = length_one
    @length_two = length_two
    @length_three = length_three
  end

  def kind
    if self.valid?
      if @length_one == @length_two && @length_one == @length_three && @length_two == @length_three
        :equilateral
      elsif @length_one != @length_two && @length_two != @length_three && @length_three != @length_one
        :scalene
      else 
        :isosceles
      end
    elsif !self.valid?
      begin
        raise TriangleError
      end
    end
  end

  def valid?
    if @length_one > 0 && @length_two > 0 && @length_three > 0
      @length_one + @length_two > @length_three &&
      @length_one + @length_three > @length_two &&
      @length_two + @length_three > @length_one
    end
  end

  class TriangleError < StandardError
  end
end