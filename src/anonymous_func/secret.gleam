// It should return a function which takes one argument and adds to it the argument passed in to secret_add
pub fn secret_add(secret: Int) -> fn(Int) -> Int {
  fn(x: Int) -> Int { secret + x }
}

pub fn secret_subtract(secret: Int) -> fn(Int) -> Int {
  fn(x: Int) -> Int { x - secret }
}

pub fn secret_multiply(secret: Int) -> fn(Int) -> Int {
  fn(x: Int) -> Int { x * secret }
}

pub fn secret_divide(secret: Int) -> fn(Int) -> Int {
  fn(x: Int) -> Int { x / secret }
}

pub fn secret_combine(
  secret_function1: fn(Int) -> Int,
  secret_function2: fn(Int) -> Int,
) -> fn(Int) -> Int {
  fn(x: Int) -> Int { secret_function2(secret_function1(x)) }
}
