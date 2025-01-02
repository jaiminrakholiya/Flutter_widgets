import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoListExample extends StatelessWidget {
  const CupertinoListExample({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Cupertino List Example'),
      ),
      child: SafeArea(
        child: ListView(
          children: [
            CupertinoListTile(
              title: Text('List Tile with Title'),
              onTap: () {
                print('List Tile tapped!');
              },
            ),
            CupertinoListSelection(
              onValueChanged: (value) {
                print('Selected value: $value');
              },
              children: [
                CupertinoListTile(
                  title: Text('Option 1'),
                  trailing: CupertinoSwitch(
                    value: true,
                    onChanged: (bool newValue) {},
                  ), onTap: () {  },
                ),
                CupertinoListTile(
                  title: Text('Option 2'),
                  trailing: CupertinoSwitch(
                    value: false,
                    onChanged: (bool newValue) {},
                  ), onTap: () {  },
                ),
              ],
            ),
            CupertinoListTileChevron(
              title: Text('List Tile with Chevron'),
              onTap: () {
                print('Chevron List Tile tapped!');
              },
            ),
          ],
        ),
      ),
    );
  }
}

class CupertinoListTile extends StatelessWidget {
  final Widget title;
  final VoidCallback onTap;
  final Widget? trailing;

  const CupertinoListTile({
    required this.title,
    required this.onTap,
    this.trailing,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            title,
            trailing ?? Icon(CupertinoIcons.forward),
          ],
        ),
      ),
    );
  }
}

class CupertinoListSelection extends StatelessWidget {
  final ValueChanged<int?> onValueChanged;
  final List<Widget> children;

  const CupertinoListSelection({
    required this.onValueChanged,
    required this.children,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: children,
    );
  }
}

class CupertinoListTileChevron extends StatelessWidget {
  final Widget title;
  final VoidCallback onTap;

  const CupertinoListTileChevron({
    required this.title,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            title,
            Icon(CupertinoIcons.chevron_forward),
          ],
        ),
      ),
    );
  }
}
