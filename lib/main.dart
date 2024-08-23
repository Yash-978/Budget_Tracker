import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sql_db/View/Screens/splashScreen.dart';

import 'View/Screens/HomeScreen.dart';
void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(name: '/', page: () => SplashPage(),),
        GetPage(name: '/home', page: () => HomePage(),)
      ],
    );
  }
}
