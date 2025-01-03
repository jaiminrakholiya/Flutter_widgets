import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_jan/Layout/Multi_child_layout_example/flow_view_example.dart';
import 'Layout/Multi_child_layout_example/GridviewExample.dart';
import 'Layout/Multi_child_layout_example/IndexedStackExample.dart';
import 'Layout/Multi_child_layout_example/LayoutBuilderExample.dart';
import 'Layout/Multi_child_layout_example/ListBodyExample.dart';
import 'Layout/Multi_child_layout_example/ListViewExample.dart';
import 'Layout/Multi_child_layout_example/StackExample.dart';
import 'Layout/Multi_child_layout_example/TableExample.dart';
import 'Layout/Multi_child_layout_example/WrapExample.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WrapExample(),
    );
  }
}
