enum Elements {
  fire,
  lightning,
  rock,
  snow,
  water,
  wind;

  String get name => switch (this) {
        Elements.fire => "fire",
        Elements.lightning => "lightning",
        Elements.rock => "rock",
        Elements.snow => "snow",
        Elements.water => "water",
        Elements.wind => "wind",
      };
}
