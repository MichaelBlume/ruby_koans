# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
require 'set'
def triangle(a, b, c)
    ssides = [a,b,c].sort
    if ssides[0] + ssides[1] <= ssides[2]
        raise TriangleError
    end
    {1 => :equilateral, 2 => :isosceles, 3 => :scalene}[ssides.to_set.size]
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
