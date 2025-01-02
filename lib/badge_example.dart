import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class BadgeExample extends StatefulWidget {
  const BadgeExample({super.key});

  @override
  State<BadgeExample> createState() => _BadgeExampleState();
}

class _BadgeExampleState extends State<BadgeExample> {
  int notificationCount = 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Badge Example'),
      ),
      body: Center(
        child: badges.Badge(
          badgeContent: Text(
            notificationCount.toString(),
            style: const TextStyle(color: Colors.white),
          ),
          badgeStyle: badges.BadgeStyle(
            badgeColor: Colors.red,
          ),
          child: IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              setState(() {
                notificationCount = (notificationCount > 0) ? notificationCount - 1 : 0;
              });
            },
          ),
        ),
      ),
    );
  }
}
