import 'package:flutter/material.dart';

class ImplicitAnimationDemo extends StatefulWidget {
  @override
  _ImplicitAnimationDemoState createState() => _ImplicitAnimationDemoState();
}

class _ImplicitAnimationDemoState extends State<ImplicitAnimationDemo> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () => setState(() => isExpanded = !isExpanded),
          child: AnimatedContainer(
            duration: Duration(seconds: 1),
            curve: Curves.easeInOut,
            width: isExpanded ? 200 : 100,
            height: isExpanded ? 200 : 100,
            color: isExpanded ? Colors.blue : Colors.red,
          ),
        ),
      ),
    );
  }
}
