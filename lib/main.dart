import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'animations_example/HeroAnimations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HeroFirstPage(),
    );
  }
}
