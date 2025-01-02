import 'package:flutter/material.dart';

class SnackbarExample extends StatefulWidget {
  const SnackbarExample({super.key});

  @override
  State<SnackbarExample> createState() => _SnackbarExampleState();
}

class _SnackbarExampleState extends State<SnackbarExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbar Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Show the Snackbar
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: const Text('This is a simple Snackbar!'),
                action: SnackBarAction(
                  label: 'Undo',
                  onPressed: () {
                    // Perform some action when Undo is pressed
                  },
                ),
                duration: const Duration(seconds: 3),
              ),
            );
          },
          child: const Text('Show Snackbar'),
        ),
      ),
    );
  }
}
