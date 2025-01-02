import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoAlertDialogExample extends StatefulWidget {
  const CupertinoAlertDialogExample({super.key});

  @override
  State<CupertinoAlertDialogExample> createState() => _CupertinoAlertDialogExampleState();
}

class _CupertinoAlertDialogExampleState extends State<CupertinoAlertDialogExample> {
  void _showCupertinoAlertDialog() {
    showCupertinoDialog(
      context: context,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: const Text("Alert"),
          content: const Text("This is a Cupertino Alert Dialog."),
          actions: <CupertinoDialogAction>[
            CupertinoDialogAction(
              isDefaultAction: true,
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("OK"),
            ),
            CupertinoDialogAction(
              isDestructiveAction: true,
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("Cancel"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cupertino Alert Dialog"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: _showCupertinoAlertDialog,
          child: const Text("Show Alert"),
        ),
      ),
    );
  }
}
