enum GameEnum {
  rock(label: "Pedra", path: "assets/images/rock.png"),
  paper(label: "Papel", path: "assets/images/paper.png"),
  scissor(label: "Tesoura", path: "assets/images/scissor.png"),
  dragon(label: "Dragão", path: "assets/images/dragon.png"),
  fire(label: "Fogo", path: "assets/images/fire.png"),
  lightning(label: "Relâmpago", path: "assets/images/lightning.png"),
  water(label: "Água", path: "assets/images/water.png"),
  wind(label: "Vento", path: "assets/images/wind.png");

  final String label;
  final String path;
  const GameEnum({required this.label, required this.path});
}

// LOGIC

// Rock
List<GameEnum> rockWin = [
  GameEnum.scissor,
  GameEnum.dragon,
  GameEnum.fire,
];

List<GameEnum> rockLose = [
  GameEnum.paper,
  GameEnum.lightning,
  GameEnum.water,
  GameEnum.wind,
];

// Paper
List<GameEnum> paperWin = [
  GameEnum.rock,
];
List<GameEnum> paperLose = [
  GameEnum.scissor,
  GameEnum.dragon,
  GameEnum.fire,
  GameEnum.lightning,
  GameEnum.water,
  GameEnum.wind,
];

// Scissor
List<GameEnum> scissorWin = [
  GameEnum.paper,
  GameEnum.dragon,
  GameEnum.lightning,
];

List<GameEnum> scissorLose = [
  GameEnum.rock,
  GameEnum.fire,
  GameEnum.water,
  GameEnum.wind,
];

// Dragon
List<GameEnum> dragonWin = [
  GameEnum.paper,
  GameEnum.water,
  GameEnum.wind,
];
List<GameEnum> dragonLose = [
  GameEnum.rock,
  GameEnum.scissor,
  GameEnum.lightning,
  GameEnum.fire,
];

// Fire
List<GameEnum> fireWin = [
  GameEnum.paper,
  GameEnum.scissor,
  GameEnum.dragon,
  GameEnum.wind,
];
List<GameEnum> fireLose = [
  GameEnum.rock,
  GameEnum.lightning,
  GameEnum.water,
];

// lightning
List<GameEnum> lightningWin = [
  GameEnum.rock,
  GameEnum.paper,
  GameEnum.dragon,
  GameEnum.fire,
  GameEnum.water,
];
List<GameEnum> lightningLose = [
  GameEnum.scissor,
  GameEnum.wind,
];

// Water
List<GameEnum> waterWin = [
  GameEnum.rock,
  GameEnum.paper,
  GameEnum.scissor,
  GameEnum.fire,
];
List<GameEnum> waterLose = [
  GameEnum.dragon,
  GameEnum.lightning,
  GameEnum.wind,
];

// Wind
List<GameEnum> windWin = [
  GameEnum.rock,
  GameEnum.paper,
  GameEnum.scissor,
  GameEnum.lightning,
  GameEnum.water,
];
List<GameEnum> windLose = [
  GameEnum.dragon,
  GameEnum.fire,
];
