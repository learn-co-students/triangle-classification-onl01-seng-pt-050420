class Triangle
  
  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end   
  
    def kind
      if has_zero_length_side? || sides_invalid?
         raise TriangleError
      end 
      
      if @s1 == @s2 && @s1 == @s3
        return :equilateral
      elsif is_isosceles?
        return :isosceles  
      else
        return :scalene
      end   
      
    end  
    
    def is_isosceles?
      @s1 == @s3 || @s1 == @s2 || @s2 == @s3
    end   
    
    def sides_invalid?
        @s1 + @s2 <= @s3 || @s1 + @s3 <= @s2  || @s3 + @s2 <= @s1
    end   
    
    def has_zero_length_side?
      @s1 <= 0 || @s2 <= 0 || @s3 <= 0
    end   
      
  
  class TriangleError < StandardError
    def message
      "All three sides must be greater than 0"
    end 
  end   
end
