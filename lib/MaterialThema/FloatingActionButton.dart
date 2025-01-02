import 'package:flutter/material.dart';

class FloatingActionButtonExample extends StatefulWidget {
  const FloatingActionButtonExample({super.key});

  @override
  State<FloatingActionButtonExample> createState() =>
      _FloatingActionButtonExampleState();
}

class _FloatingActionButtonExampleState
    extends State<FloatingActionButtonExample> {
  int _counter = 0;
  String _selectedOption = "Option 1";

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FAB & Segmented Button Example"),
        actions: [
          IconButton(
            icon: Icon(Icons.info_outline),
            tooltip: 'Show Info',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("This is an info button!")),
              );
            },
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "Counter: $_counter",
              style: TextStyle(fontSize: 24),
            ),
          ),
          SizedBox(height: 20),
          SegmentedButton<String>(
            segments: [
              ButtonSegment(value: "Option 1", label: Text("Option 1")),
              ButtonSegment(value: "Option 2", label: Text("Option 2")),
              ButtonSegment(value: "Option 3", label: Text("Option 3")),
            ],
            selected: {_selectedOption},
            onSelectionChanged: (newSelection) {
              setState(() {
                _selectedOption = newSelection.first;
              });
            },
          ),
          SizedBox(height: 20),
          Text(
            "Selected: $_selectedOption",
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: _incrementCounter,
            child: Icon(Icons.add),
            tooltip: 'Increment Counter',
          ),
          SizedBox(height: 16), // Spacing between buttons
          FloatingActionButton.extended(
            onPressed: _resetCounter,
            icon: Icon(Icons.refresh),
            label: Text("Reset Counter"),
            tooltip: 'Reset Counter',
          ),
        ],
      ),
    );
  }
}
