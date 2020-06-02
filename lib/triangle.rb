class Triangle
  attr_accessor :a, :b, :c

  def initialize(x, y, z)
  #  kind(a, b, c) 
      @a = x
      @b = y
      @c = z
  end
  
  def kind
    if a <= 0 || b <= 0 || c <= 0
      raise TriangleError
    elsif a >= (b+c) || b >= (a + c) || c >= (a + b)
      raise TriangleError
    elsif a == b && b == c
      return :equilateral
    elsif a != b && b != c && a != c
      return :scalene
    elsif a == b || a == c || b == c
      return :isosceles
    else 
      raise TriangleError
    end
  end


  class TriangleError < StandardError
    def message
      "Triangle is invalid with those measurements."
    end
  end
end
