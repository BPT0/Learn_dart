class Player {
  final String name;
  String team;
  int xp, age;

  Player.fromJson(Map<String, dynamic> playerJson)
      : name = playerJson['name'],
        xp = playerJson['xp'],
        age = playerJson['age'],
        team = playerJson['team'];

  void sayHello() {
    print("Hi my name is ${name}, this is my ${team} and ${xp}");
  }
}

void main() {
  var apiData = [
    {
      "name": "kbs",
      "team": "red",
      "xp": 0,
      "age": 12,
    },
    {
      "name": "kbh",
      "team": "blue",
      "xp": 0,
      "age": 13,
    },
    {
      "name": "kby",
      "team": "green",
      "xp": 0,
      "age": 14,
    },
  ];

  apiData.forEach((playerJson) {
    var player = Player.fromJson(playerJson);
    player.sayHello();
  });
}
