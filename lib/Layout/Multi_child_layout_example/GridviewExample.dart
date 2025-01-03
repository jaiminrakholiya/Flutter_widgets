import 'package:flutter/material.dart';

class GridViewExample extends StatefulWidget {
  const GridViewExample({super.key});

  @override
  State<GridViewExample> createState() => _GridViewExampleState();
}

class _GridViewExampleState extends State<GridViewExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'GridView Example',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        padding: EdgeInsets.all(10),
        children: List.generate(10, (index) {
          return Container(
            color: Colors.blue[100 * (index + 1)],
            child: Center(
              child: Text(
                'Item ${index + 1}',
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
            ),
          );
        }),
      ),
    );
  }
}
