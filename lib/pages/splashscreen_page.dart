import 'dart:async';
import 'package:flutter/material.dart';

class SplashScreenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(milliseconds: 3000), () {  Navigator.pushReplacementNamed(context, '/intro');
    });

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(color: Colors.black,
          child: Center(
              child: Image.asset("assets/images/logo-digikala.png")),
      ),
      ),
    );
  }
}
