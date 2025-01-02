import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoButtonExample extends StatefulWidget {
  const CupertinoButtonExample({super.key});

  @override
  State<CupertinoButtonExample> createState() => _CupertinoButtonExampleState();
}

class _CupertinoButtonExampleState extends State<CupertinoButtonExample> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Cupertino Buttons Example'),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Default CupertinoButton
            CupertinoButton(
              onPressed: () {
                print('Default button pressed');
              },
              color: CupertinoColors.black,
              child: const Text('Default Button'),
            ),
            const SizedBox(height: 20),

            // Disabled CupertinoButton
            CupertinoButton(
              onPressed: null, // Disabled button
              color: CupertinoColors.black,
              child: const Text('Disabled Button'),
            ),
            const SizedBox(height: 20),

            // CupertinoButton with Border
            CupertinoButton(
              onPressed: () {
                print('Border button pressed');
              },
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: const Text('Button with Border'),
            ),
            const SizedBox(height: 20),

            // CupertinoButton with Icon
            CupertinoButton(
              onPressed: () {
                print('Icon button pressed');
              },
              color: CupertinoColors.black,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(CupertinoIcons.add, color: CupertinoColors.white),
                  SizedBox(width: 8),
                  Text('Button with Icon'),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // CupertinoButton.filled
            CupertinoButton.filled(
              onPressed: () {
                print('Filled button pressed');
              },
              child: const Text('Filled Button'),
            ),
          ],
        ),
      ),
    );
  }
}
