import 'package:flutter/material.dart';

class Dilagoexample extends StatefulWidget {
  const Dilagoexample({super.key});

  @override
  State<Dilagoexample> createState() => _DilagoexampleState();
}

class _DilagoexampleState extends State<Dilagoexample> {
  void _showAlertDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Alert'),
          content: const Text('This is an alert dialog!'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alert Dialog Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: _showAlertDialog,
          child: const Text('Show Alert Dialog'),
        ),
      ),
    );
  }
}
