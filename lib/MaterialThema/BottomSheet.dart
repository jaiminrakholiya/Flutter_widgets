import 'package:flutter/material.dart';

class BottomSheetExample extends StatefulWidget {
  const BottomSheetExample({super.key});

  @override
  State<BottomSheetExample> createState() => _BottomSheetExampleState();
}

class _BottomSheetExampleState extends State<BottomSheetExample> {
  // Function to show the bottom sheet
  void _showBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 300, // Set height of bottom sheet
          color: Colors.white,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("This is a bottom sheet"),
                SizedBox(height: 10),
                Text("You can add more widgets here!"),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Bottom Sheet Example')),
      body: Center(
        child: ElevatedButton(
          onPressed: _showBottomSheet, // Show bottom sheet on button press
          child: const Text('Show Bottom Sheet'),
        ),
      ),
    );
  }
}
