// If the guess is 42: "Correct"
// If the guess is 41 or 43: "So close"
// If the guess is less than 41: "Too low"
// If the guess is greater than 43: "Too high"

pub fn reply(guess: Int) -> String {
  case guess {
    42 -> "Correct"
    41 | 43 -> "So close"
    x if x < 41 -> "Too low"
    _ -> "Too high"
  }
}
