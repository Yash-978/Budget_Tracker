import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sql_db/Controller/controller.dart';

var controller = Get.put(HomeController());

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var w= MediaQuery.of(context).size.width;
    var h= MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: () {
              controller.insertRecord();
            },
            child: Icon(Icons.add),
          ),
          SizedBox(width: w*0.040,),
          FloatingActionButton(
            onPressed: () {
              controller.deleteRecord();
            },
            child: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
