import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoAdaptiveTextSelectionToolbarExample extends StatefulWidget {
  const CupertinoAdaptiveTextSelectionToolbarExample({super.key});

  @override
  State<CupertinoAdaptiveTextSelectionToolbarExample> createState() =>
      _CupertinoAdaptiveTextSelectionToolbarExampleState();
}

class _CupertinoAdaptiveTextSelectionToolbarExampleState
    extends State<CupertinoAdaptiveTextSelectionToolbarExample> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Cupertino Adaptive Toolbar Example'),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: CupertinoTextField(
            controller: _controller,
            placeholder: 'Type here...',
            textInputAction: TextInputAction.done,
            keyboardType: TextInputType.text,
            style: const TextStyle(
              color: CupertinoColors.black, // Text color
              fontSize: 16,
            ),
            decoration: BoxDecoration(
              color: CupertinoColors.inactiveGray, // Background color
              borderRadius: BorderRadius.circular(8), // Rounded corners
            ),
            selectionControls: cupertinoTextSelectionControls,
          ),
        ),
      ),
    );
  }
}
