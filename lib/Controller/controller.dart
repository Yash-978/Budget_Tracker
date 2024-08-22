import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Helper/DataBaseHelper/dataBaseHelper.dart';

class HomeController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    initDb();
  }

  Future initDb() async {
    await DataBaseHelper.dataBaseHelper.database;
  }

  Future insertRecord() async {
    await DataBaseHelper.dataBaseHelper.insertData();
  }
  Future deleteRecord() async {
    await DataBaseHelper.dataBaseHelper.deleteData();
  }
}
