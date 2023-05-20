import 'package:superheroes_app/models/appearence.dart';
import 'package:superheroes_app/models/connections.dart';
import 'package:superheroes_app/models/powerstats.dart';
import 'package:superheroes_app/models/biography.dart';
import 'package:superheroes_app/models/work.dart';

class Superhero {
  String id;
  String name;
  PowerStats stats;
  Biography bio;
  Appearance appearance;
  Work work;
  Connections connections;
  String image;

  Superhero(this.id, this.name, this.stats, this.bio, this.appearance, this.work, this.connections, this.image);
}