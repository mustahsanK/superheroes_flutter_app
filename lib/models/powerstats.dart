class PowerStats {
  String intelligence;
  String strength;
  String speed;
  String durability;
  String power;
  String combat;

  PowerStats(this.intelligence, this.strength, this.speed, this.durability, this.power, this.combat);

  PowerStats.fromJson(Map<String, dynamic> json)
    : intelligence = json['intelligence'],
      strength = json['strength'],
      speed = json['speed'],
      durability = json['durability'],
      power = json['power'],
      combat = json['combat'];
}