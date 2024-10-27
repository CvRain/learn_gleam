pub fn equilateral(a: Float, b: Float, c: Float) -> Bool {
  is_triangle(a, b, c) && a == b && b == c
}

pub fn isosceles(a: Float, b: Float, c: Float) -> Bool {
  { a == c || b == c || a == b } && is_triangle(a, b, c)
}

pub fn scalene(a: Float, b: Float, c: Float) -> Bool {
  is_triangle(a, b, c) && !{ equilateral(a, b, c) || isosceles(a, b, c) }
}

pub fn is_triangle(a: Float, b: Float, c: Float) -> Bool {
  a +. b >=. c
  && a +. c >=. b
  && b +. c >=. a
  && a != 0.0
  && b != 0.0
  && c != 0.0
}
