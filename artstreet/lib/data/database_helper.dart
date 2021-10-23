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
        'create table package (id INTEGER PRIMARY KEY, head varchar(100), url_image varchar(100), city varchar(100), title varchar(100), desc varchar(100), validity varchar(100), old_price int, current_price int, nights integer, discount integer, persons integer, free_cancellation boolean);';
    await db.execute(sql);

    sql =
        "INSERT INTO package (id, head, url_image, city, title, desc, validity, old_price, current_price, nights, discount, persons, free_cancellation) VALUES (1, 'Pacote Amsterdam', 'https://tradeturismo.com.br/novo/wp-content/uploads/2018/10/fazer-em-amsterda-1200x565.jpg', 'Amsterdam, NLD', 'Pacote Amsterdam - 2022 e 2023', 'Aéreo + Hospedagem', '01 Jan 2022 a 31 Dez 2023', 5486, 4389, 8, 20, 2, 1);";
    await db.execute(sql);

    sql =
        "INSERT INTO package (id, head, url_image, city, title, desc, validity, old_price, current_price, nights, discount, persons, free_cancellation) VALUES (2, 'Pacote Cancún', 'https://blogmaladeviagem.com.br/wp-content/uploads/2016/11/Blog-Mala-de-Viagem-cancun.jpg', 'CANCÚN, MEX', 'Pacote Cancún 2021', 'Aéreo + Transfer Grátis', '01 Nov 2021 a 31 Dez 2021', 6500, 3854, 5, 30, 1, 1);";
    await db.execute(sql);
  }
}
