import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CupertinoRadioExample extends StatefulWidget {
  const CupertinoRadioExample({super.key});

  @override
  State<CupertinoRadioExample> createState() => _CupertinoRadioExampleState();
}

class _CupertinoRadioExampleState extends State<CupertinoRadioExample> {
  int _selectedIndex = 0;

  final List<String> _options = ['Option 1', 'Option 2', 'Option 3'];

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Cupertino Radio Example'),
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              _options.length,
                  (index) {
                return CupertinoButton(
                  padding: EdgeInsets.zero,
                  child: Row(
                    children: [
                      CupertinoRadio<int>(
                        value: index,
                        groupValue: _selectedIndex,
                        onChanged: (int? value) {
                          setState(() {
                            _selectedIndex = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10),
                      Text(
                        _options[index],
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  onPressed: () {
                    setState(() {
                      _selectedIndex = index;
                    });
                  },
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
