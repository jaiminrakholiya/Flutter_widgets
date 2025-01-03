import 'package:flutter/material.dart';

class LayoutExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Flutter Layout Widgets Example")),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // Align
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  color: Colors.blue,
                  width: 100,
                  height: 100,
                  child: Center(child: Text('Align')),
                ),
              ),
              SizedBox(height: 20),

              // AspectRatio
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Container(
                  color: Colors.green,
                  child: Center(child: Text('AspectRatio')),
                ),
              ),
              SizedBox(height: 20),

              // Baseline
              Baseline(
                baseline: 40.0,
                baselineType: TextBaseline.alphabetic,
                child: Container(
                  color: Colors.orange,
                  width: 100,
                  height: 100,
                  child: Center(child: Text('Baseline')),
                ),
              ),
              SizedBox(height: 20),

              // Center
              Center(
                child: Container(
                  color: Colors.purple,
                  width: 100,
                  height: 100,
                  child: Center(child: Text('Center')),
                ),
              ),
              SizedBox(height: 20),

              // ConstrainedBox
              ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 200),
                child: Container(
                  color: Colors.red,
                  width: 250,
                  height: 100,
                  child: Center(child: Text('ConstrainedBox')),
                ),
              ),
              SizedBox(height: 20),

              // Container
              Container(
                color: Colors.blueAccent,
                width: 100,
                height: 100,
                child: Center(child: Text('Container')),
              ),
              SizedBox(height: 20),

              // CustomSingleChildLayout
              CustomSingleChildLayout(
                delegate: MyLayoutDelegate(),
                child: Container(
                  color: Colors.amber,
                  width: 100,
                  height: 100,
                  child: Center(child: Text('CustomSingleChildLayout')),
                ),
              ),
              SizedBox(height: 20),

              // Expanded
              Row(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.cyan,
                      height: 100,
                      child: Center(child: Text('Expanded')),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),

              // FittedBox
              FittedBox(
                child: Container(
                  color: Colors.pink,
                  width: 100,
                  height: 100,
                  child: Center(child: Text('FittedBox')),
                ),
              ),
              SizedBox(height: 20),

              // FractionallySizedBox
              FractionallySizedBox(
                alignment: Alignment.topLeft,
                widthFactor: 0.5,
                heightFactor: 0.5,
                child: Container(
                  color: Colors.teal,
                  child: Center(child: Text('FractionallySizedBox')),
                ),
              ),
              SizedBox(height: 20),

              // IntrinsicHeight
              IntrinsicHeight(
                child: Row(
                  children: [
                    Container(
                      color: Colors.lime,
                      width: 50,
                      height: 100,
                      child: Center(child: Text('IntrinsicHeight')),
                    ),
                    Container(
                      color: Colors.purpleAccent,
                      width: 50,
                      height: 50,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),

              // LimitedBox
              LimitedBox(
                maxWidth: 200,
                child: Container(
                  color: Colors.yellow,
                  width: 300,
                  height: 100,
                  child: Center(child: Text('LimitedBox')),
                ),
              ),
              SizedBox(height: 20),

              // Offstage
              Offstage(
                offstage: false,
                child: Container(
                  color: Colors.blueGrey,
                  width: 100,
                  height: 100,
                  child: Center(child: Text('Offstage')),
                ),
              ),
              SizedBox(height: 20),

              // OverflowBox
              OverflowBox(
                maxWidth: 300,
                maxHeight: 150,
                child: Container(
                  color: Colors.deepPurple,
                  width: 400,
                  height: 200,
                  child: Center(child: Text('OverflowBox')),
                ),
              ),
              SizedBox(height: 20),

              // Padding
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Container(
                  color: Colors.orangeAccent,
                  height: 100,
                  width: 100,
                  child: Center(child: Text('Padding')),
                ),
              ),
              SizedBox(height: 20),

              // SizedBox
              SizedBox(
                width: 100,
                height: 100,
                child: Container(
                  color: Colors.grey,
                  child: Center(child: Text('SizedBox')),
                ),
              ),
              SizedBox(height: 20),

              // SizedOverflowBox
              SizedOverflowBox(
                size: Size(200, 100),
                child: Container(
                  color: Colors.deepOrange,
                  width: 300,
                  height: 150,
                  child: Center(child: Text('SizedOverflowBox')),
                ),
              ),
              SizedBox(height: 20),

              // Transform
              Transform(
                transform: Matrix4.rotationZ(0.3),
                alignment: Alignment.center,
                child: Container(
                  color: Colors.greenAccent,
                  width: 100,
                  height: 100,
                  child: Center(child: Text('Transform')),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyLayoutDelegate extends SingleChildLayoutDelegate {
  @override
  BoxConstraints getConstraintsForChild(BoxConstraints constraints) {
    return BoxConstraints(maxWidth: 200, maxHeight: 100);
  }

  @override
  Size getSize(BoxConstraints constraints) {
    return Size(200, 100);
  }

  @override
  void paint(Canvas canvas, Size size, {TextDirection? textDirection}) {
    final paint = Paint()..color = Colors.blueAccent;
    canvas.drawRect(Offset.zero & size, paint);
  }

  @override
  bool shouldRelayout(covariant SingleChildLayoutDelegate oldDelegate) {
    return false;
  }
}
