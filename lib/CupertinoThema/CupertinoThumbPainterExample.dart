import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoThumbPainterExample extends StatefulWidget {
  const CupertinoThumbPainterExample({super.key});

  @override
  State<CupertinoThumbPainterExample> createState() =>
      _CupertinoThumbPainterExampleState();
}

class _CupertinoThumbPainterExampleState
    extends State<CupertinoThumbPainterExample> {
  double _sliderValue = 0.5;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Custom Thumb Slider'),
      ),
      child: Center(
        child: SliderTheme(
          data: SliderTheme.of(context).copyWith(
            thumbShape: CustomSliderThumbCircle(), // Custom thumb shape.
            activeTrackColor: CupertinoColors.systemBlue,
            inactiveTrackColor: CupertinoColors.systemGrey,
          ),
          child: Slider(
            value: _sliderValue,
            onChanged: (value) {
              setState(() {
                _sliderValue = value;
              });
            },
          ),
        ),
      ),
    );
  }
}

class CustomSliderThumbCircle extends SliderComponentShape {
  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return const Size(20.0, 20.0); // Size of the custom thumb.
  }

  @override
  void paint(
      PaintingContext context,
      Offset center, {
        required Animation<double> activationAnimation,
        required Animation<double> enableAnimation,
        required bool isDiscrete,
        required TextPainter labelPainter,
        required RenderBox parentBox,
        required SliderThemeData sliderTheme,
        required TextDirection textDirection,
        required double value,
        required double textScaleFactor,
        required Size sizeWithOverflow,
      }) {
    final Paint paint = Paint()
      ..color = CupertinoColors.systemRed // Thumb color
      ..style = PaintingStyle.fill;

    context.canvas.drawCircle(center, 10.0, paint); // Draw a circle for the thumb.
  }
}
