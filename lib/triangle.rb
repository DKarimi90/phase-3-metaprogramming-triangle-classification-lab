class Triangle

  attr_accessor :side1, :side2, :side3
  # write code here
  def initialize(side1, side2, side3)
    @side1=side1
    @side2=side2
    @side3=side3
  end 

TriangleError = Class.new(StandardError)
    def kind 
      @equilateral
      @isosceles
      @scalene

      if @side1 == 0 || @side2 == 0 || @side3 == 0
        raise TriangleError
      elsif @side1 + @side2 <= @side3 || @side1 + @side3 <= @side2 || 
        @side2 + @side3 <= @side1
        raise TriangleError
        elsif @side1 == @side2 && @side2 == @side3
          :equilateral 
          elsif @side1 == @side2 || @side2 == @side3 ||
            @side1 == @side3
            :isosceles
          else 
            :scalene 
          end 
        end 
end
