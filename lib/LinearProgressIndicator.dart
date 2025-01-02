import 'package:flutter/material.dart';

class ProgressWidget extends StatefulWidget {
  const ProgressWidget({super.key});

  @override
  State<ProgressWidget> createState() => _ProgressWidgetState();
}

class _ProgressWidgetState extends State<ProgressWidget> {
  double _progressValue = 0.3; // Example progress value (30%)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Linear Progress Indicator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Task Progress:'),
            const SizedBox(height: 10),
            LinearProgressIndicator(
              value: _progressValue, // This controls the progress
              backgroundColor: Colors.grey[300], // Optional: background color
              color: Colors.blue, // Optional: progress color
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  // Simulate progress update
                  _progressValue += 0.1;
                  if (_progressValue > 1.0) {
                    _progressValue = 0.0; // Reset progress
                  }
                });
              },
              child: const Text('Update Progress'),
            ),
          ],
        ),
      ),
    );
  }
}
