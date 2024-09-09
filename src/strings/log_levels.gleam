import gleam/string

pub fn message(log_line: String) -> String {
  case string.split(log_line, ": ") {
    [_, message] -> string.trim_right(message) |> string.trim_left
    _ -> panic
  }
}

pub fn log_level(log_line: String) -> String {
  let level_str = case string.split(log_line, "]") {
    [level, _] -> level
    _ -> panic
  }
  string.drop_left(level_str, 1)
  |> string.lowercase
}

pub fn reformat(log_line: String) -> String {
  message(log_line) <> " (" <> log_level(log_line) <> ")"
}
