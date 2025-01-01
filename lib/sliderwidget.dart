import 'package:flutter/material.dart';
class SliderWidget extends StatefulWidget {
  const SliderWidget({super.key});

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  double _currentVolume = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Slider(
          max: 5,
          divisions: 5,
          value: _currentVolume, onChanged: (double value){
        setState(() {
          _currentVolume = value;
        });
      }),
    );
  }
}
