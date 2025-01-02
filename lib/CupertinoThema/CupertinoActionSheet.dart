import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoActionSheetExample extends StatefulWidget {
  const CupertinoActionSheetExample({super.key});

  @override
  State<CupertinoActionSheetExample> createState() => _CupertinoActionSheetExampleState();
}

class _CupertinoActionSheetExampleState extends State<CupertinoActionSheetExample> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: const Text('Cupertino Action Sheet Example'),
      ),
      child: SafeArea(
        child: Center(
          child: CupertinoButton(
            color: CupertinoColors.black,
            onPressed: () {
              _showCupertinoActionSheet(context);
            },
            child: const Text('Show Action Sheet',style: TextStyle(
              color: Colors.white,
            ),),
          ),
        ),
      ),
    );
  }

  void _showCupertinoActionSheet(BuildContext context) {
    showCupertinoModalPopup(
      context: context,
      builder: (BuildContext context) => CupertinoActionSheet(
        title: const Text('Cupertino Action Sheet'),
        message: const Text('Choose an action'),
        actions: <CupertinoActionSheetAction>[
          CupertinoActionSheetAction(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Action 1'),
          ),
          CupertinoActionSheetAction(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Action 2'),
          ),
        ],
        cancelButton: CupertinoActionSheetAction(
          isDestructiveAction: true,
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Cancel'),
        ),
      ),
    );
  }
}
