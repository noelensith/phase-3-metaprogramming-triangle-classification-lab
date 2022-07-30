class Triangle
  # write code here
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  
  def kind
    valid
    if side1 == side2 && side2 == side3
      :equilateral
    elsif side1 == side2 || side2 == side3 || side1 ==side3
      :isosceles
    else
      :scalene
    end
  end

  def valid
    raise TriangleError unless [side1, side2, side3].all?(&:positive?) &&
     side1 + side2 > side3 && side1 + side3 > side2 && side2 + side3 > side1
   end

  class TriangleError < StandardError
    
  end
end
