import gleam/option.{type Option}

pub fn two_fer(name: Option(String)) -> String {
  case name {
    option.Some(value) -> "One for " <> value <> ", one for me."
    _ -> "One for you, one for me."
  }
}
