// TODO: please define the 'Coach' type
pub type Coach {
  Coach(name: String, former_player: Bool)
}

// TODO: please define the 'Stats' type
pub type Stats {
  Stats(wins: Int, losses: Int)
}

// TODO: please define the 'Team' type
pub type Team {
  Team(name: String, coach: Coach, stats: Stats)
}

pub fn create_coach(name: String, former_player: Bool) -> Coach {
  Coach(name, former_player)
}

pub fn create_stats(wins: Int, losses: Int) -> Stats {
  Stats(wins, losses)
}

pub fn create_team(name: String, coach: Coach, stats: Stats) -> Team {
  Team(name, coach, stats)
}

pub fn replace_coach(team: Team, coach: Coach) -> Team {
  Team(team.name, coach, team.stats)
}

pub fn is_same_team(home_team: Team, away_team: Team) -> Bool {
  home_team == away_team
}

pub fn root_for_team(team: Team) -> Bool {
  let is_root = False

  let is_root =
    case team.coach {
      Coach(name: "Gregg Popovich", former_player: _) -> True
      Coach(name: _, former_player: True) -> True
      _ -> False
    }
    || is_root

  let is_root =
    case team {
      Team(name: "Chicago Bulls", coach: _, stats: _) -> True
      Team(name: _, coach: _, stats: x) ->
        case x {
          Stats(wins: y, losses: _) if y >= 60 -> True
          Stats(wins: y, losses: z) if z > y -> True
          _ -> False
        }
    }
    || is_root

  is_root
}
