import gleam.{type Int}

// TODO: please define the 'Approval' custom type
pub type Approval {
  Yes
  No
  Maybe
}

// TODO: please define the 'Cuisine' custom type
pub type Cuisine {
  Korean
  Turkish
}

// TODO: please define the 'Genre' custom type
pub type Genre {
  Crime
  Horror
  Romance
  Thriller
}

// TODO: please define the 'Activity' custom type
pub type Activity {
  BoardGame
  Chill
  Movie(Genre)
  Restaurant(Cuisine)
  Walk(Int)
}

pub fn rate_activity(activity: Activity) -> Approval {
  case activity {
    BoardGame -> No
    Chill -> No
    Movie(movie) ->
      case movie {
        Romance -> Yes
        _ -> No
      }
    Restaurant(cuisine) ->
      case cuisine {
        Korean -> Yes
        _ -> Maybe
      }
    Walk(distance) ->
      case distance {
        _ if distance > 11 -> Yes
        _ if distance > 6 -> Maybe
        _ -> No
      }
  }
}
