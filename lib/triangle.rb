class Triangle
  attr_accessor :s1, :s2, :s3

  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end

def kind
  triangle
  if @s1 == @s2 && @s2 == @s3
  :equilateral
elsif @s1 == @s2 || @s1 == @s3 || @s2 == @s3
:isosceles
else 
  :scalene
end
end

def triangle
  tri = [(s1 + s2 > s3), (s1 + s3 > s2), (s2 + s3 > s1)]
  [s1, s2, s3].each do |side|
      tri << false if side <= 0 
    raise TriangleError if tri.include?(false)
    end
  end

 class TriangleError < StandardError
  end
end
