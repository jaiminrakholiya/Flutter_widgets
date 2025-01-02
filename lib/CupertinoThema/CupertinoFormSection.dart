import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoFormSectionExample extends StatefulWidget {
  const CupertinoFormSectionExample({super.key});

  @override
  State<CupertinoFormSectionExample> createState() =>
      _CupertinoFormSectionExampleState();
}

class _CupertinoFormSectionExampleState
    extends State<CupertinoFormSectionExample> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Cupertino Form Section'),
      ),
      child: SafeArea(
        child: CupertinoFormSection(
          header: Text('Form Section Header'),
          children: [
            CupertinoFormRow(
              prefix: Text('First Name'),
              child: CupertinoTextFormFieldRow(
                placeholder: 'Enter your first name',
                padding: EdgeInsets.zero,
              ),
            ),
            CupertinoFormRow(
              prefix: Text('Last Name'),
              child: CupertinoTextFormFieldRow(
                placeholder: 'Enter your last name',
                padding: EdgeInsets.zero,
              ),
            ),
            CupertinoFormRow(
              prefix: Text('Email'),
              child: CupertinoTextFormFieldRow(
                placeholder: 'Enter your email',
                padding: EdgeInsets.zero,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
