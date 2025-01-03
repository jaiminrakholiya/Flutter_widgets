import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SegmentedControlExample extends StatefulWidget {
  const SegmentedControlExample({super.key});

  @override
  State<SegmentedControlExample> createState() => _SegmentedControlExampleState();
}

class _SegmentedControlExampleState extends State<SegmentedControlExample> {
  String selectedValue = 'Option 1';

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Segmented Control Example'),
      ),
      child: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: CupertinoSegmentedControl<String>(
                groupValue: selectedValue,
                onValueChanged: (value) {
                  setState(() {
                    selectedValue = value;
                  });
                },
                children: const {
                  'Option 1': Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Option 1',style: const TextStyle(fontSize: 20),),
                  ),
                  'Option 2': Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Option 2',style: const TextStyle(fontSize: 20),),
                  ),
                  'Option 3': Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Option 3',style: const TextStyle(fontSize: 20),),
                  ),
                },
              ),
            ),
            Expanded(
              child: Center(
                child: Text(
                  'Selected: $selectedValue',
                  style: const TextStyle(fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
