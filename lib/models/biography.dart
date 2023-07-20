import 'package:superheroes_app/utils/list_from_json.dart';

class Biography {
  String fullName;
  String alterEgo;
  List<String> aliases;
  String placeOfBirth;
  String first;
  String publisher;
  String alignment;

  Biography(this.fullName, this.alterEgo, this.aliases, this.placeOfBirth, this.first, this.publisher, this.alignment);

  Biography.fromJson(Map<String, dynamic> json)
    : fullName = json['full-name'],
      alterEgo = json['alter-egos'],
      aliases = listFromJson(json['aliases']),
      placeOfBirth = json['place-of-birth'],
      first = json['first-appearance'],
      publisher = json['publisher'],
      alignment = json['alignment'];
}