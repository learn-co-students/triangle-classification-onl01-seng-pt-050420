class Triangle
  # write code here
  
  attr_accessor :s1, :s2, :s3
  
  
  def initialize(s1,s2,s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
    end
    
    
  def kind
    
    # if (@s1 + @s2) <= @s3 || (@s2)
      
    
    if (@s1 * @s2 * @s3) <= 0 || (@s1+@s2 <= @s3) || (@s1+@s3 <= @s2) || (@s2+@s3 <= @s1)
      
      begin
        raise TriangleError
          puts error.message
        end
    
    elsif(@s1 == @s2) && (@s1 == @s3) && (@s2 == @s3)
      :equilateral
    elsif (@s1 == @s2) || (@s2 == @s3) || (@s3 == @s1)
      :isosceles
    elsif (@s1 != @s2) && (@s2 != @s3) && (@s3 != @s1)
      :scalene
    elsif (@s1 * @s2 * @s3) <= 0
          raise TriangleError
        
    end
      
    
  end
  
  
  class TriangleError < StandardError
  
  end
  
end
