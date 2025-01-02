import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ScrollbarExample extends StatefulWidget {
  const ScrollbarExample({super.key});

  @override
  State<ScrollbarExample> createState() => _ScrollbarExampleState();
}

class _ScrollbarExampleState extends State<ScrollbarExample> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Cupertino Scrollbar Example'),
      ),
      child: SafeArea(
        child: CupertinoScrollbar(
          child: ListView.builder(
            itemCount: 100,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text("Item $index"),
              );
            },
          ),
        ),
      ),
    );
  }
}
