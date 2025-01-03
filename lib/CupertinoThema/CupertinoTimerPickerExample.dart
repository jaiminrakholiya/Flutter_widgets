import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CupertinoTimerPickerExample extends StatefulWidget {
  const CupertinoTimerPickerExample({super.key});

  @override
  State<CupertinoTimerPickerExample> createState() => _CupertinoTimerPickerExampleState();
}

class _CupertinoTimerPickerExampleState extends State<CupertinoTimerPickerExample> {
  Duration _selectedTime = Duration(hours: 0, minutes: 0, seconds: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cupertino Timer Picker')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Selected Time: ${_selectedTime.inHours}:${_selectedTime.inMinutes % 60}:${_selectedTime.inSeconds % 60}',
              style: TextStyle(fontSize: 20),
            ),
            CupertinoButton(
              child: Text('Show Timer Picker'),
              onPressed: () {
                showCupertinoModalPopup(
                  context: context,
                  builder: (context) => CupertinoActionSheet(
                    title: Text('Pick Timer'),
                    message: CupertinoTimerPicker(
                      initialTimerDuration: _selectedTime,
                      onTimerDurationChanged: (Duration newDuration) {
                        setState(() {
                          _selectedTime = newDuration;
                        });
                      },
                    ),
                    cancelButton: CupertinoActionSheetAction(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text('Cancel'),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
