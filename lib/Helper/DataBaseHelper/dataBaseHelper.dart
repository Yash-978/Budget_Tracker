import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';

class DataBaseHelper {
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

}
