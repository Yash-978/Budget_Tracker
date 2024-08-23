import 'dart:async';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';

/*class DataBaseHelper {
  static DataBaseHelper dataBaseHelper = DataBaseHelper._instance();

  DataBaseHelper._instance();

  Database? _database;

  Future get database async => _database ?? await initDatabase();

  Future initDatabase() async {
    final path = await getDatabasesPath();
    final dbPath = join(path, 'finance.db');

    _database = await openDatabase(
      dbPath,
      version: 1,
      onCreate: (db, version) async {
        String sql = '''CREATE TABLE finance(
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      amount REAL NOT NULL,
      isIncome INTEGER NOT NULL,
      category TEXT);
       ''';
        await db.execute(sql);
      },
    );
    return _database;
  }

  Future insertData() async {
    Database? db = await database;
    String sql = '''INSERT INTO finance(amount,isIncome,category)
    VALUES(500,1,"Hoodie");
     ''';
    await db!.rawInsert(sql);
  }
  Future deleteData() async {
    Database? db = await database;
    String sql = '''DELETE FROM finance(amount,isIncome,category)
    VALUES(500,1,"Hoodie");
     ''';
    await db!.rawDelete(sql);
  }

}*/
/*class DataBaseHelper {
  static DataBaseHelper dataBaseHelper = DataBaseHelper._singleton();

  DataBaseHelper._singleton();

  Database? _database;

  Future get database async => _database ?? await initDatabase();

  Future initDatabase() async {
    final path = await getDatabasesPath();
    final dbPath = join(path, 'quotesData.db');

    _database = await openDatabase(
      dbPath,
      version: 1,
      onCreate: (db, version) async {
        String sql = '''CREATE TABLE quote(
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      quote TEXT,
      author TEXT,
      category TEXT
      );
      ''';
        await db.execute(sql);
      },
    );
    return _database;
  }

  Future insertData(String quote, author, category) async {
    Database? db = await database;
    String sql = '''INSERT INTO quote (quote,author,category) VALUES (?,?,?)''';
    List args=[quote,author,category];
    await db!.rawInsert(sql,args);
  }

  Future readData() async {
    Database? db = await database;
    String sql = '''SELECT * FROM quote''';
    return await db!.rawQuery(sql);
  }

  Future deleteData(int id) async {
    Database? db = await database;
    String sql = '''DELETE FROM quote WHERE id = ?
    ''';
    List args = [id];
    await db!.rawDelete(sql,args);
  }
}*/
class DataBaseHelper {
  static DataBaseHelper dataBaseHelper = DataBaseHelper._singleton();

  DataBaseHelper._singleton();

  Database? _database;

  Future get database async => _database ?? await initDatabase();

  Future initDatabase() async {
    final path = await getDatabasesPath();
    final dbPath = join(path, 'budgetTracker.db');

    _database = await openDatabase(
      dbPath,
      version: 1,
      onCreate: (db, version) async {
        String sql = '''CREATE TABLE budget(
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      amount REAL NOT NULL,
      isIncome INTEGER NOT NULL,
      category TEXT
      );
      ''';
        await db.execute(sql);
      },
    );
    return _database;
  }

  Future insertData(double amount, int isIncome, String category) async {
    Database? db = await database;
    String sql =
        '''INSERT INTO budget (amount,isIncome,category) VALUES (?,?,?)''';
    List args = [amount, isIncome, category];
    await db!.rawInsert(sql, args);
  }

  Future readData() async {
    Database? db = await database;
    String sql = '''SELECT * FROM budget''';
    return await db!.rawQuery(sql);
  }

  Future deleteData(int id) async {
    Database? db = await database;
    String sql = '''DELETE FROM budget WHERE id = ?''';
    List args = [id];
    await db!.rawDelete(sql, args);
  }
}
