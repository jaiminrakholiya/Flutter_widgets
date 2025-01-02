import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CupertinoNavigationBarExample extends StatefulWidget {
  const CupertinoNavigationBarExample({super.key});

  @override
  State<CupertinoNavigationBarExample> createState() => _CupertinoNavigationBarExampleState();
}

class _CupertinoNavigationBarExampleState extends State<CupertinoNavigationBarExample> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Cupertino Navigation Bar'),
        trailing: CupertinoButton(
          padding: EdgeInsets.zero,
          child: Icon(CupertinoIcons.add),
          onPressed: () {
            // Action for the trailing button
          },
        ),
      ),
      child: Center(
        child: Text('Content goes here',style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),),
      ),
    );
  }
}
