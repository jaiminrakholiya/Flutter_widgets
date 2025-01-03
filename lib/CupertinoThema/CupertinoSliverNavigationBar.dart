import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoSliverNavigationBarExample extends StatefulWidget {
  const CupertinoSliverNavigationBarExample({super.key});

  @override
  State<CupertinoSliverNavigationBarExample> createState() => _CupertinoSliverNavigationBarExampleState();
}

class _CupertinoSliverNavigationBarExampleState extends State<CupertinoSliverNavigationBarExample> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: [
          CupertinoSliverNavigationBar(
            largeTitle: Text('Sliver Navigation Bar'),
            leading: CupertinoButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                // Add functionality for leading button if needed
              },
              child: const Icon(CupertinoIcons.back),
            ),
            trailing: CupertinoButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                // Add functionality for trailing button if needed
              },
              child: const Icon(CupertinoIcons.settings),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (context, index) {
                return ListTile(
                  title: Text('Item $index'),
                );
              },
              childCount: 50, // Number of items in the list
            ),
          ),
        ],
      ),
    );
  }
}
