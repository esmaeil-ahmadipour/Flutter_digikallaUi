import 'package:flutter/material.dart';
import 'package:flutter_clone_digikalla_ui/pages/main_page.dart';

void main() => runApp(
      MaterialApp(
          home: MainPage(
            title: "DigiKalla",
          ),
          theme: ThemeData(
            fontFamily: 'Yekan'
          ),
          debugShowCheckedModeBanner: false),
    );
