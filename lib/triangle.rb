class Triangle
        attr_accessor :a, :b, :c 

  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c

    if a >= (b+c) || b >= (a + c) || c >= (a + b)
      raise TriangleError
    end

    if a <= 0 || b <= 0 || c <= 0
      raise TriangleError
    end

    if a == nil ||b == nil || c == nil
      raise TriangleError
    end

    
  end
   
  def kind
    
    if a==b && a == c 
      :equilateral
    elsif
      a == b || a == c || b == c
      :isosceles
    elsif
      a != b && a != c
      :scalene
    
    end

  end
  class TriangleError < StandardError
    # triangle error code
  end
end
