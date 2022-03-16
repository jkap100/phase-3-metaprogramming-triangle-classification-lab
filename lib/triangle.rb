class Triangle
  # write code here

  attr_reader :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
   
    validate_triangle
    
    if a == b && b == c
      :equilateral
    elsif a == b || a == c || b == c
      :isosceles
    else
      :scalene
    end

    

  end

  def sides_greater_than_zero?
    a > 0 && b > 0 && c > 0
  end

  def valid_triangle_inequality?
    a + b > c && a + c > b && b + c > a
  end

  def validate_triangle
    if  sides_greater_than_zero? && valid_triangle_inequality?
      puts "triangle"
    else
      raise TriangleError
    end
  end

  class TriangleError < StandardError
    end

end
