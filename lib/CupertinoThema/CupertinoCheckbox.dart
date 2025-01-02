import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoCheckboxExample extends StatefulWidget {
  const CupertinoCheckboxExample({super.key});

  @override
  State<CupertinoCheckboxExample> createState() => _CupertinoCheckboxExampleState();
}

class _CupertinoCheckboxExampleState extends State<CupertinoCheckboxExample> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Cupertino Checkbox Example'),
      ),
      child: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              isChecked = !isChecked;
            });
          },
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  border: Border.all(
                    color: CupertinoColors.systemGrey,
                    width: 2,
                  ),
                  color: isChecked
                      ? CupertinoColors.activeGreen
                      : CupertinoColors.white,
                ),
                child: isChecked
                    ? Icon(
                  CupertinoIcons.check_mark,
                  size: 16,
                  color: CupertinoColors.white,
                )
                    : null,
              ),
              const SizedBox(width: 8),
              const Text('Check me', style: TextStyle(fontSize: 16)),
            ],
          ),
        ),
      ),
    );
  }
}
