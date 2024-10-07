import gleam/int
import gleam/option.{type Option}

pub type Player {
  Player(name: Option(String), level: Int, health: Int, mana: Option(Int))
}

pub fn introduce(player: Player) -> String {
  case player {
    Player(name, _, _, _) ->
      case name {
        option.Some(t) -> t
        option.None -> "Mighty Magician"
      }
  }
}

pub fn revive(player: Player) -> Option(Player) {
  case player {
    Player(_, _, health, option.Some(_)) ->
      case health {
        0 ->
          option.Some(Player(
            name: player.name,
            level: player.level,
            health: 100,
            mana: option.Some(100),
          ))
        _ -> option.None
      }
    Player(_, _, health, option.None) ->
      case health {
        0 ->
          option.Some(Player(
            name: player.name,
            level: player.level,
            health: 100,
            mana: option.None,
          ))
        _ -> option.None
      }
  }
}

pub fn cast_spell(player: Player, cost: Int) -> #(Player, Int) {
  case player.mana {
    option.Some(mana) ->
      case mana {
        m if m < cost -> #(player, 0)
        m -> #(Player(..player, mana: option.Some(m - cost)), cost * 2)
      }
    option.None -> #(
      Player(..player, health: player.health - cost |> int.max(0)),
      0,
    )
  }
}
