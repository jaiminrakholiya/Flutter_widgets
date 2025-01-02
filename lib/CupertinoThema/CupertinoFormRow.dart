import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoFormRowExample extends StatefulWidget {
  const CupertinoFormRowExample({super.key});

  @override
  State<CupertinoFormRowExample> createState() =>
      _CupertinoFormRowExampleState();
}

class _CupertinoFormRowExampleState extends State<CupertinoFormRowExample> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Cupertino Form Row Example'),
      ),
      child: SafeArea(
        child: CupertinoFormSection(
          header: Text('Form Section'),
          children: [
            CupertinoFormRow(
              prefix: Text('Name'),
              child: CupertinoTextField(
                placeholder: 'Enter your name',
              ),
            ),
            CupertinoFormRow(
              prefix: Text('Email'),
              child: CupertinoTextField(
                placeholder: 'Enter your email',
              ),
            ),
            CupertinoFormRow(
              prefix: Text('Password'),
              child: CupertinoTextField(
                obscureText: true,
                placeholder: 'Enter your password',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
