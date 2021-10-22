import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  initDB() async {
    String databasePath = await getDatabasesPath();
  }
}
