import gleam/io
import ints/roman_numerals

pub fn main() {
  io.println("Hello from exercise!")
  io.println("The answer is: " <> roman_numerals.convert(1123))
}
