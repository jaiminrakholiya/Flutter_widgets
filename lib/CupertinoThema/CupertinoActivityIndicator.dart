import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoActivityIndicatorWidget extends StatefulWidget {
  const CupertinoActivityIndicatorWidget({super.key});

  @override
  State<CupertinoActivityIndicatorWidget> createState() =>
      _CupertinoActivityIndicatorWidgetState();
}

class _CupertinoActivityIndicatorWidgetState
    extends State<CupertinoActivityIndicatorWidget> {
  bool _isloading = true;

  void _toggleLoading() {
    setState(() {
      _isloading = !_isloading;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: const Text('CupertinoActivityIndicatiore'),
      ),
        child:Center(
          child: _isloading
              ? const CupertinoActivityIndicator()
              : const Text ('Loaded!'),
        )
    ); // Added CupertinoActivityIndicator here
  }
}
