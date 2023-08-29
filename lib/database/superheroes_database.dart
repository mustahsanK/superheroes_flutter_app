import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import 'package:superheroes_app/models/superhero.dart';

class SuperheroesDatabase {
  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;
    return await openDatabase(
      join(await getDatabasesPath(), 'superheroes_database.db'),
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE favourite(id INTEGER PRIMARY KEY, name STRING)'
        );
      },
      version: 1,
    );
  }

  Future<List<Map<String, dynamic>>> getAllRows() async {
    final db = SuperheroesDatabase._database;
    final maps = await db?.query('favourite');
    return List.generate(maps!.length, (index) {
      return {
        'id': maps[index]['id'],
        'name': maps[index]['name'],
      };
    });
  }

  Future<void> deleteFromTable(Superhero hero) async {
    final db = SuperheroesDatabase._database;
    await db?.delete(
      'favourite',
      where: 'id = ?',
      whereArgs: [hero.id],
    );
  }

  Future<void> insertIntoTable(Superhero hero) async {
    final db = SuperheroesDatabase._database;
    await db?.insert(
      'favourite',
      {'id' : hero.id, 'name': hero.name}
    );
  }
}