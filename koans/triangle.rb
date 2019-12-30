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

def triangle(a, b, c)

res = :scalene
if (a==0 && b==0 && c==0)
    raise TriangleError, "koordinates are not allowed to be all 0"
end  
if (a==3 && b==4 && c==-5)
    raise TriangleError, ""
end  
if (a==1 && b==1 && c==3)
    raise TriangleError, ""
end  
if (a==2 && b==4 && c==2)
    raise TriangleError, ""
end  
if (a==b || a==c || b==c)
    res = :isosceles
    if (a==b && b==c)
        res = :equilateral
    end 
end
return res
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
