import 'package:flutter/material.dart';

class SwaipAndSlider extends StatefulWidget {
  const SwaipAndSlider({super.key});

  @override
  State<SwaipAndSlider> createState() => _SwaipAndSliderState();
}

class _SwaipAndSliderState extends State<SwaipAndSlider> {
  // List of items to be displayed
  List<int> items = List<int>.generate(20, (int index) => index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Swipe and Slider'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        padding: const EdgeInsets.symmetric(vertical: 16),
        itemBuilder: (BuildContext context, int index) {
          return Dismissible(
            background: Container(
              color: Colors.green, // Background color when swiped
            ),
            key: ValueKey<int>(items[index]), // Key to identify the item
            onDismissed: (DismissDirection direction) {
              setState(() {
                items.removeAt(index); // Remove item when swiped
              });
            },
            child: ListTile(
              title: Text('Item ${items[index]}'), // Display item number
            ),
          );
        },
      ),
    );
  }
}
