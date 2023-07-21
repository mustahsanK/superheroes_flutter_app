import 'package:superheroes_app/utils/list_from_json.dart';

class Appearance {
  String gender;
  String race;
  String height;
  String weight;
  String eye;
  String hair;

  Appearance(this.gender, this.race, this.height, this.weight, this.eye, this.hair);

  Appearance.fromJson(Map<String, dynamic> json)
    : gender = json['gender'],
      race = json['race'],
      height = listFromJson(json['height'])[0],
      weight = listFromJson(json['weight'])[1],
      eye = json['eye-color'],
      hair = json['hair-color'];
}