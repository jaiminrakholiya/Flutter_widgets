import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CupertinoPickerExample extends StatefulWidget {
  const CupertinoPickerExample({super.key});

  @override
  State<CupertinoPickerExample> createState() => _CupertinoPickerExampleState();
}

class _CupertinoPickerExampleState extends State<CupertinoPickerExample> {
  int _selectedIndex = 0;

  final List<String> _items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Cupertino Picker Example'),
      ),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CupertinoPicker(
              itemExtent: 32.0, // height of each item in the picker
              onSelectedItemChanged: (int index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              children: List<Widget>.generate(
                _items.length,
                    (int index) {
                  return Center(
                    child: Text(
                      _items[index],
                      style: TextStyle(fontSize: 20),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Selected: ${_items[_selectedIndex]}',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
