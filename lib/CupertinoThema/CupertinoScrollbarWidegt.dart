import 'package:flutter/cupertino.dart';

class ScrollbarExample extends StatefulWidget {
  const ScrollbarExample({super.key});

  @override
  State<ScrollbarExample> createState() => _ScrollbarExampleState();
}

class _ScrollbarExampleState extends State<ScrollbarExample> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Cupertino Scrollbar Example'),
      ),
      child: SafeArea(
        child: CupertinoScrollbar(
          thumbVisibility: true, // Ensures the scrollbar is always visible.
          thickness: 6.0,        // Customize the thickness of the scrollbar.
          radius: const Radius.circular(8), // Rounded scrollbar edges.
          child: ListView.builder(
            itemCount: 50, // Reduced item count for readability.
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 4.0),
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: CupertinoColors.systemGrey6,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Text(
                    "Item $index",
                    style: const TextStyle(fontSize: 16.0),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
