import 'package:flutter/material.dart';

enum Character { musician, chef, firefighter, artist }

class ButtonandSwitch extends StatefulWidget {
  const ButtonandSwitch({super.key});

  @override
  State<ButtonandSwitch> createState() => _ButtonandSwitchState();
}

class _ButtonandSwitchState extends State<ButtonandSwitch> {
  bool isChecked = false;
  bool light = true;
  Character? _character = Character.musician;

  void setCharacter(Character? value) {
    setState(() {
      _character = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Button, Switch, and Radio Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(height: 50),
            // Checkbox
            Row(
              children: [
                Checkbox(
                  checkColor: Colors.white,
                  value: isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value!;
                    });
                  },
                ),
                const Text('Check me'),
              ],
            ),
            const SizedBox(height: 20),
            // Switch
            Row(
              children: [
                Switch(
                  value: light,
                  activeColor: Colors.blueAccent,
                  onChanged: (bool value) {
                    setState(() {
                      light = value;
                    });
                  },
                ),
                const Text('Toggle Light'),
              ],
            ),
            const SizedBox(height: 20),
            // Radio Buttons
            ListTile(
              title: const Text('Musician'),
              leading: Radio<Character>(
                value: Character.musician,
                groupValue: _character,
                onChanged: setCharacter,
              ),
            ),
            ListTile(
              title: const Text('Chef'),
              leading: Radio<Character>(
                value: Character.chef,
                groupValue: _character,
                onChanged: setCharacter,
              ),
            ),
            ListTile(
              title: const Text('Firefighter'),
              leading: Radio<Character>(
                value: Character.firefighter,
                groupValue: _character,
                onChanged: setCharacter,
              ),
            ),
            ListTile(
              title: const Text('Artist'),
              leading: Radio<Character>(
                value: Character.artist,
                groupValue: _character,
                onChanged: setCharacter,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
