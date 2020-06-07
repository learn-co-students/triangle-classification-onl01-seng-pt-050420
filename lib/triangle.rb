class Triangle

  attr_accessor :length_one, :length_two, :length_three

    def initialize(length_one, length_two, length_three)
      @length_one, @length_two, @length_three = length_one, length_two, length_three
    end

    def triangle_check
#       The sum of the lengths of any two sides of a triangle always exceeds the length of the third side. This is a principle known as the triangle inequality.

# Further, each side must be larger than 0

      if !(length_one + length_three > length_two) || !(length_two + length_three > length_one) || !(length_one + length_two > length_three)
        raise TriangleError
      end
    end

    def kind

      triangle_check
        
      if length_one == length_two && length_two == length_three
        :equilateral
      elsif length_one == length_two || length_three == length_one || length_two == length_three
        :isosceles
      else
        :scalene
      end
    end


    class TriangleError < StandardError
      # triangle error code
    end
end
