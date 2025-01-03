import 'package:flutter/material.dart';

class ListViewExample extends StatelessWidget {
  const ListViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Example'),
      ),
      body: ListView.builder(
        itemCount: 10, // Set to 10 items
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(10),
            color: Colors.blue,
            height: 100,  // Fixed height for each item
            child: Center(
              child: Text(
                'Item ${index + 1}',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          );
        },
      ),
    );
  }
}


