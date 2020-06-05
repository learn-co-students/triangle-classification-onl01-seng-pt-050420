class Triangle
  attr_accessor :kind

  def initialize(a, b, c)
    a, b, c = [a, b, c].sort
    raise TriangleError if a <= 0 or a + b <= c

      if a == c
        self.kind = :equilateral
      elsif a == b || b == c
        self.kind = :isosceles
      else
        self.kind = :scalene
      end
  end

  class TriangleError < StandardError
    def message
      "This triangle is invalid!"
    end
  end

end
