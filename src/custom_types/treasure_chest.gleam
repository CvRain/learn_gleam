//类型定义：pub type TreasureChest(treasure) 定义了一个名为 TreasureChest 的类型，这个类型是泛型的，treasure 是类型参数。
//构造函数：在类型内部，使用相同的名称 TreasureChest 来定义构造函数。这种设计允许在创建 TreasureChest 实例时，直接使用同样的名称来调用构造函数。
pub type TreasureChest(treasure) {
  Chest(password: String, treasure: treasure)
}

pub type UnlockResult(t) {
  Unlocked(t)
  WrongPassword
}

pub fn get_treasure(
  chest: TreasureChest(treasure),
  password: String,
) -> UnlockResult(treasure) {
  case chest.password == password {
    True -> Unlocked(chest.treasure)
    False -> WrongPassword
  }
}
