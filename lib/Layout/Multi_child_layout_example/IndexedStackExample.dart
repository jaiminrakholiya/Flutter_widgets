import 'package:flutter/material.dart';

class IndexedStackExample extends StatefulWidget {
  const IndexedStackExample({super.key});

  @override
  State<IndexedStackExample> createState() => _IndexedStackExampleState();
}

class _IndexedStackExampleState extends State<IndexedStackExample> {
  int _selectedIndex = 0;

  // List of widgets to display
  final List<Widget> _widgets = [
    Container(
      color: Colors.blue,
      child: Center(
        child: Text(
          'Page 1',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
    ),
    Container(
      color: Colors.green,
      child: Center(
        child: Text(
          'Page 2',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
    ),
    Container(
      color: Colors.red,
      child: Center(
        child: Text(
          'Page 3',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IndexedStack Example'),
      ),
      body: Column(
        children: [
          // The IndexedStack widget
          Expanded(
            child: IndexedStack(
              index: _selectedIndex, // Display the widget at the current index
              children: _widgets, // List of widgets to switch between
            ),
          ),
          // Buttons to switch between the pages
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _selectedIndex = 0; // Show Page 1
                  });
                },
                child: Text('Page 1'),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _selectedIndex = 1; // Show Page 2
                  });
                },
                child: Text('Page 2'),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _selectedIndex = 2; // Show Page 3
                  });
                },
                child: Text('Page 3'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
