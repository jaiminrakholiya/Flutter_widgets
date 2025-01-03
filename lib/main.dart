import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'Layout/Multi_child_layout_example/CarouselViewExample.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CarouselWidget(),
    );
  }
}
