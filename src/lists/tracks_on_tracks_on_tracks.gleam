import gleam/list

pub fn new_list() -> List(String) {
  list.new()
}

pub fn existing_list() -> List(String) {
  ["Gleam", "Go", "TypeScript"]
}

pub fn add_language(languages: List(String), language: String) -> List(String) {
  list.append([language], languages)
}

pub fn count_languages(languages: List(String)) -> Int {
  list.length(languages)
}

pub fn reverse_list(languages: List(String)) -> List(String) {
  list.reverse(languages)
}

pub fn exciting_list(languages: List(String)) -> Bool {
  case languages {
    ["Gleam"] -> True
    ["Gleam", ..] -> True
    [_, "Gleam"] -> True
    [_, "Gleam", _] -> True
    [_, "Gleam", _, ..] -> False
    _ -> False
  }
}
