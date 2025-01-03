import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CupertinoTabViewExample extends StatefulWidget {
  const CupertinoTabViewExample({super.key});

  @override
  State<CupertinoTabViewExample> createState() => _CupertinoTabViewExampleState();
}

class _CupertinoTabViewExampleState extends State<CupertinoTabViewExample> {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.settings),
              label: 'Settings',
            ),
          ],
        ),
        tabBuilder: (context, index) {
          return CupertinoTabView(
            builder: (context) {
              switch (index) {
                case 0:
                  return const Center(child: Text('Home Page'));
                case 1:
                  return const Center(child: Text('Search Page'));
                case 2:
                  return const Center(child: Text('Settings Page'));
                default:
                  return const Center(child: Text('Page Not Found'));
              }
            },
          );
        },
      ),
    );
  }
}
