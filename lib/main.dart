import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'Layout/Sliver_Layout_Widgets/SliverToBoxAdapterExample.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SliverToBoxAdapterExample(),
    );
  }
}
