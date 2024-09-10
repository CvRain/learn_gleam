import gleam/string

pub fn convert(number: Int) -> String {
  case number {
    x if x < 1 || x > 3999 -> "Invalid input"
    _ -> ""
  }

  let result: String = ""

  // 处理千位
  let thousands = number / 1000
  let thousand_result = case thousands {
    1 -> "M"
    2 -> "MM"
    3 -> "MMM"
    _ -> ""
  }
  let result = string.append(result, thousand_result)

  // 处理百位
  let hundreds = { number % 1000 } / 100
  let hundred_result = case hundreds {
    1 -> "C"
    2 -> "CC"
    3 -> "CCC"
    4 -> "CD"
    5 -> "D"
    6 -> "DC"
    7 -> "DCC"
    8 -> "DCCC"
    9 -> "CM"
    _ -> ""
  }
  let result = string.append(result, hundred_result)

  // 处理十位
  let tens = { number % 100 } / 10
  let tens_result = case tens {
    1 -> "X"
    2 -> "XX"
    3 -> "XXX"
    4 -> "XL"
    5 -> "L"
    6 -> "LX"
    7 -> "LXX"
    8 -> "LXXX"
    9 -> "XC"
    _ -> ""
  }
  let result = string.append(result, tens_result)

  // 处理个位
  let ones = number % 10
  let ones_result = case ones {
    1 -> "I"
    2 -> "II"
    3 -> "III"
    4 -> "IV"
    5 -> "V"
    6 -> "VI"
    7 -> "VII"
    8 -> "VIII"
    9 -> "IX"
    _ -> ""
  }
  let result = string.append(result, ones_result)

  result
}
