import gleam/int
import gleam/string

// If a given number:
//
// is divisible by 3, add "Pling" to the result.
// is divisible by 5, add "Plang" to the result.
// is divisible by 7, add "Plong" to the result.
// is not divisible by 3, 5, or 7, the result should be the number as a string.

pub fn convert(number: Int) -> String {
  let str: String = ""
  let temp = case number {
    _ if number % 3 == 0 -> "Pling"
    _ -> ""
  }
  let str = string.append(str, temp)

  let temp = case number {
    _ if number % 5 == 0 -> "Plang"
    _ -> ""
  }
  let str = string.append(str, temp)

  let temp = case number {
    _ if number % 7 == 0 -> "Plong"
    _ -> ""
  }
  let str = string.append(str, temp)

  let temp = case number {
    _ if number % 3 != 0 && number % 5 != 0 && number % 7 != 0 ->
      int.to_string(number)
    _ -> ""
  }
  let str = string.append(str, temp)

  str
}
