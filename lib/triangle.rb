class Triangle
  attr_accessor :side3, :side1, :side2
  
  
    def initialize(side1, side2, side3)
        @side1 = side1 
        @side2 = side2
        @side3 = side3
        if @side1 <= 0 && @side2 <= 0 && @side3 <= 0
          raise TriangleError   
      elsif @side1 < 0 || @side2 < 0 || @side3 < 0 
          raise TriangleError
      elsif (@side1 + @side2) <= @side3 || (@side1 + @side3) <= @side2 || (@side2 + @side3) <= @side1
        raise TriangleError  
       end
      end
     
         
       



    def kind
      if @side1 == @side2 && @side1 == @side3
        return :equilateral
        # if @side1 == 0 && @side2 == 0 && @side3 ==0
        #   Triangle::TriangleError 
        # end
      elsif @side1 == @side2 || @side2 == @side3 || @side1 == @side3
        return :isosceles
      else
        return :scalene
      end
      
    end
      
      class TriangleError < StandardError
            def message
              "Side length must be greater than 0.  The sum of two sides must be greater than the third."
            end
      
      end
      
      end
      
      
      

     
