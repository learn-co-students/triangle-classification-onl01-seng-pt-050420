class Triangle
  # write code here
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c  
    
  end

  def valid
    # if a == 0 && b == 0 && c == 0
       
    #     raise TriangleError
      
    # if a < 0 || b < 0 || c < 0
      
    #     raise TriangleError
      
    if  !(c < b + a) || !(a < b + c)  || !(b < c + a )
      
        raise TriangleError
      
     end 
  end 
  
  def kind
    valid 
    if  a == b && b == c && a == c 
      :equilateral
    elsif a == b || b == c || a == c
      :isosceles
      
    else  
      :scalene
     
    end
  end 
  


      
        
   
  class TriangleError < StandardError
  end
end
