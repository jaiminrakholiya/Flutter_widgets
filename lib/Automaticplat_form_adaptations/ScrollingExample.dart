import 'package:flutter/material.dart';

class ScrollingExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter Scrolling and Gestures')),
      body: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: 20,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => print('Single tap on Item $index'),
            onLongPress: () => print('Long press on Item $index'),
            onDoubleTap: () => print('Double tap on Item $index'),
            child: ListTile(
              title: Text('Item $index'),
              subtitle: Text('Tap, Long Press, or Double Tap'),
            ),
          );
        },
      ),
    );
  }
}
