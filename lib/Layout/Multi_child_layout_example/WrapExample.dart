import 'package:flutter/material.dart';

class WrapExample extends StatelessWidget {
  const WrapExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wrap Example'),
      ),
      body: Center(
        child: Wrap(
          spacing: 15, // Horizontal spacing between widgets
          runSpacing: 20, // Vertical spacing between rows
          alignment: WrapAlignment.center, // Center alignment for children
          children: List.generate(10, (index) {
            return Container(
              width: 80,
              height: 80,
              color: Colors.blue[(index + 1) * 100],
              child: Center(
                child: Text(
                  'Item ${index + 1}',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}


