import 'package:flutter/material.dart';

class FlowExample extends StatelessWidget {
  const FlowExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flow Widget Example"),
      ),
      body: Center(
        child: Flow(
          delegate: CustomFlowDelegate(),
          children: List.generate(
            10,
                (index) => Container(
              height: 60,
              width: 60,
              color: Colors.blue[100 * (index + 1)],
              child: Center(
                child: Text(
                  '${index + 1}',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CustomFlowDelegate extends FlowDelegate {
  @override
  void paintChildren(FlowPaintingContext context) {
    // Example: arrange the children in a circular pattern
    double radius = 100.0;
    double angle = 2 * 3.14159 / context.childCount;

    for (int i = 0; i < context.childCount; i++) {
      double x = radius * (i % 2 == 0 ? 1 : -1) * (i + 1) * 0.2;
      double y = radius * (i % 2 == 0 ? 1 : -1) * (i + 1) * 0.2;

      context.paintChild(
        i,
        transform: Matrix4.translationValues(x, y, 0),
      );
    }
  }

  @override
  bool shouldRepaint(FlowDelegate oldDelegate) {
    return false; // Return true if the layout changes dynamically
  }
}
