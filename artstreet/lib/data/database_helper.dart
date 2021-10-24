import 'dart:async';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  Database _db;

  Future<Database> get db async {
    _db = await _initDB();
    return _db;
  }

  _initDB() async {
    String databasePath = await getDatabasesPath();
    String path = join(databasePath, "pacotes.db");

    print(path);

    var db = await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );

    return db;
  }

  Future<FutureOr<void>> _onCreate(Database db, int version) async {
    String sql =
        'create table package (nickname varchar(30) PRIMARY KEY, senha varchar(20), email varchar(50));';
    await db.execute(sql);

    sql =
        "INSERT INTO package (nickname, senha, email) VALUES ('nany', 'nany', 'nany@gmail.com');";
    await db.execute(sql);

    sql =
        "INSERT INTO package (nickname, senha, email) VALUES ('kel', 'kel', 'kel@gmail.com');";
    await db.execute(sql);
  }
}
