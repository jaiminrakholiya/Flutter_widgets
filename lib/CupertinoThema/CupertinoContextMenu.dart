import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoContextMenuExample extends StatefulWidget {
  const CupertinoContextMenuExample({super.key});

  @override
  State<CupertinoContextMenuExample> createState() =>
      _CupertinoContextMenuExampleState();
}

class _CupertinoContextMenuExampleState
    extends State<CupertinoContextMenuExample> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Cupertino Context Menu Example'),
      ),
      child: Center(
        child: CupertinoContextMenu(
          actions: [
            CupertinoContextMenuAction(
              child: const Text('Option 1'),
              onPressed: () {
                // Close the context menu and open the alert dialog
                Navigator.of(context, rootNavigator: true).pop();
                _showDialog(context, 'Option 1 Selected');
              },
            ),
            CupertinoContextMenuAction(
              child: const Text('Option 2'),
              onPressed: () {
                Navigator.of(context, rootNavigator: true).pop();
                _showDialog(context, 'Option 2 Selected');
              },
            ),
            CupertinoContextMenuAction(
              isDestructiveAction: true,
              child: const Text('Delete'),
              onPressed: () {
                Navigator.of(context, rootNavigator: true).pop();
                _showDialog(context, 'Delete Action');
              },
            ),
          ],
          child: Container(
            width: 100,
            height: 100,
            color: CupertinoColors.systemBlue,
            alignment: Alignment.center,
            child: const Text(
              'Hold Me',
              style: TextStyle(
                color: CupertinoColors.white,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _showDialog(BuildContext context, String title) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: Text(title),
          actions: [
            CupertinoDialogAction(
              child: const Text('OK'),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        );
      },
    );
  }
}
