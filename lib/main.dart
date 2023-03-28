import 'package:flutter/material.dart';
import 'package:staggerd_view/screen/homepage/view/homeScreen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (context) => Home_screen(),
      },
    )
  );
}
