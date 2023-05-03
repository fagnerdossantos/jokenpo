enum GameElements {
  rock(name: "Pedra", path: "assets/images/rock.png"),
  paper(name: "Papel", path: "assets/images/paper.png"),
  scissor(name: "Tesoura", path: "assets/images/scissor.png"),
  dragon(name: "Dragão", path: "assets/images/dragon.png"),
  fire(name: "Fogo", path: "assets/images/fire.png"),
  lightning(name: "Relâmpago", path: "assets/images/lightning.png"),
  water(name: "Água", path: "assets/images/water.png"),
  wind(name: "Vento", path: "assets/images/wind.png");

  final String name;
  final String path;
  const GameElements({required this.name, required this.path});
}

// Rules Check
Map<GameElements, List<GameElements>> winCondition = {
  GameElements.rock: [
    GameElements.scissor,
    GameElements.dragon,
    GameElements.fire,
  ],
  GameElements.paper: [
    GameElements.rock,
  ],
  GameElements.scissor: [
    GameElements.paper,
    GameElements.dragon,
    GameElements.lightning,
  ],
  GameElements.dragon: [
    GameElements.paper,
    GameElements.water,
    GameElements.wind,
  ],
  GameElements.fire: [
    GameElements.paper,
    GameElements.scissor,
    GameElements.dragon,
    GameElements.wind,
  ],
  GameElements.lightning: [
    GameElements.rock,
    GameElements.paper,
    GameElements.dragon,
    GameElements.fire,
    GameElements.water,
  ],
  GameElements.water: [
    GameElements.rock,
    GameElements.paper,
    GameElements.scissor,
    GameElements.fire,
  ],
  GameElements.wind: [
    GameElements.rock,
    GameElements.paper,
    GameElements.scissor,
    GameElements.lightning,
    GameElements.water,
  ],
};
