class Triangle
  
  def initialize(length1, length2, length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3
  end
  
  def kind
    if (@length1 == @length2 && @length2 == @length3) && (@length1 > 0 || @length2 > 0 || @length3 > 0) && ((@length1 + @length2 )>@length3 && (@length2 + @length3 )>@length1 && (@length1 + @length3 )>@length2)     
      :equilateral
    elsif (@length1 == @length2 || @length1 == @length3 || @length2 == @length3) && (@length1 > 0 || @length2 > 0 || @length3 > 0) && ((@length1 + @length2 )>@length3 && (@length2 + @length3 )>@length1 && (@length1 + @length3 )>@length2) 
      :isosceles
    elsif ((@length1 != @length2) && (@length2 != @length3) && (@length1 != @length3)) && (@length1 > 0 || @length2 > 0 || @length3 > 0) && ((@length1 + @length2 )>@length3 && (@length2 + @length3 )>@length1 && (@length1 + @length3 )>@length2) 
      :scalene
    else 
      raise TriangleError
    end


  end

  class TriangleError < StandardError
  end
end
