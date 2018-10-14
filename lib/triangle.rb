class Triangle
  # write code here
  attr_accessor :l1, :l2, :l3

  def initialize(l1, l2, l3)
    self.l1 = l1
    self.l2 = l2
    self.l3 = l3
  end

  def kind
    if l1 <= 0 || l2 <= 0 || l3 <= 0
      #begin
        raise TriangleError
      #rescue TriangleError => error   
       # puts error.message
    
    elsif l1 + l2 <= l3 || l1 + l3 <= l2 || l2 + l3 <= l1
      #begin
        raise TriangleError
      #rescue TriangleError => error   
      #  puts error.message
     # end

    elsif l1 == l2 && l1 == l3 && l2 == l3
      return :equilateral
    elsif l1 == l2 || l1 == l3 || l2 == l3
      return :isosceles
    else
      return :scalene
  end
end

class TriangleError < StandardError
    def message 
      "Invalid"
    end
end

end