import 'package:flutter/material.dart';
import 'package:flutter_jan/buttonandswitch.dart';
import 'package:flutter_jan/chip_widget.dart';
import 'package:flutter_jan/clockandcalander.dart';
import 'package:flutter_jan/dropdownwidget.dart';
import 'package:flutter_jan/sliderwidget.dart';
import 'package:flutter_jan/swaipeand%20slider.dart';
import 'package:flutter_jan/widegts1.dart';
import 'package:flutter_jan/form_wideget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
      ),
      home: SwaipAndSlider(),
    );
  }
}
