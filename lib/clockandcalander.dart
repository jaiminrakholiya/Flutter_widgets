import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ClockAndCalander extends StatefulWidget {
  const ClockAndCalander({super.key});

  @override
  State<ClockAndCalander> createState() => _ClockAndCalanderState();
}

class _ClockAndCalanderState extends State<ClockAndCalander> {
  DateTime? selectedDate;
  TimeOfDay? selectedTime;

  @override
  Widget build(BuildContext context) {
    var date = selectedDate;
    var time = selectedTime;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          children: [
            Text(
              date == null
                  ? "You haven't picked a date yet."
                  : DateFormat('MM-dd-yyyy').format(date),
            ),
            ElevatedButton.icon(
              icon: const Icon(Icons.calendar_today),
              onPressed: () async {
                var pickedDate = await showDatePicker(
                  context: context,
                  initialEntryMode: DatePickerEntryMode.calendarOnly,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(1945),
                  lastDate: DateTime(2050),
                );

                setState(() {
                  selectedDate = pickedDate;
                });
              },
              label: const Text('Pick a date'),
            ),
            SizedBox(height: 30,),
            Text(
              time == null ? "You haven't picked a time yet." : time.format(context),
            ),
            ElevatedButton.icon(
              icon: const Icon(Icons.access_time),
              onPressed: () async {
                var pickedTime = await showTimePicker(
                  context: context,
                  initialEntryMode: TimePickerEntryMode.dial,
                  initialTime: TimeOfDay.now(),
                );

                setState(() {
                  selectedTime = pickedTime;
                });
              },
              label: const Text('Pick a time'),
            )
          ],
        ),
      ),
    );
  }
}
