import 'dart:async';
import 'package:flutter/material.dart';

import 'HomeScreen.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => HomePage(),
      ));
    });
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: h * 0.15,
              width: w * 0.51,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/budgetTracker.png'),
                ),
              ),
            ),
            Text('Budget Tracker',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),)
          ],
        ),
      ),
    );
  }
}
