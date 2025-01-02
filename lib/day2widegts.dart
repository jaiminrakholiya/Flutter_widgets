import 'package:flutter/material.dart';

class GestureExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Gesture Example")),
      body: Center(
        child: GestureDetector(
          onTap: () {
            print("Single Tap Detected!");
          },
          onDoubleTap: () {
            print("Double Tap Detected!");
          },
          onLongPress: () {
            print("Long Press Detected!");
          },
          onPanUpdate: (details) {
            print("Pan Detected: ${details.delta}");
          },
          child: Container(
            width: 150,
            height: 150,
            color: Colors.blue,
            child: Center(
              child: Text(
                "Tap,\n Double Tap,\n Long Press, or \n Drag",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
