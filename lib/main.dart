import 'package:flutter/material.dart';
import 'package:flutter_clone_digikalla_ui/pages/introduction_page.dart';
import 'package:flutter_clone_digikalla_ui/pages/main_page.dart';
import 'package:flutter_clone_digikalla_ui/pages/splashscreen_page.dart';

void main() => runApp(
      MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => SplashScreenPage(),
          '/intro': (context) => IntroductionPage(),
          '/main': (context) => MainPage(),
        },
          theme: ThemeData(
            fontFamily: 'Yekan'
          ),
          debugShowCheckedModeBanner: false),
    );
