import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoTabBarExample extends StatefulWidget {
  const CupertinoTabBarExample({super.key});

  @override
  State<CupertinoTabBarExample> createState() => _CupertinoTabBarExampleState();
}

class _CupertinoTabBarExampleState extends State<CupertinoTabBarExample> {
  int _selectedIndex = 0; // Keeps track of the selected tab index.

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Column(
        children: [
          Expanded(
            child: Center(
              child: Text(
                'Tab ${_selectedIndex + 1} Content',
                style: const TextStyle(fontSize: 24),
              ),
            ),
          ),
          CupertinoTabBar(
            currentIndex: _selectedIndex,
            onTap: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
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
        ],
      ),
    );
  }
}
