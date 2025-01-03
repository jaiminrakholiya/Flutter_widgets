import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cupertino_silderexample extends StatefulWidget {
  const Cupertino_silderexample({super.key});

  @override
  State<Cupertino_silderexample> createState() => _Cupertino_silderexampleState();
}

class _Cupertino_silderexampleState extends State<Cupertino_silderexample> {
  double silderValue =50;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Cupertino Slider Example'),
      ),
        child:SafeArea(
            child: Center(
              child: Column(spacing: 5,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('value: ${silderValue.toStringAsFixed(1)},',style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 24,
                    color: Colors.black,
                  ),),
                  CupertinoSlider(
                      value:silderValue ,
                      min: 0,
                      max: 100,
                      divisions: 20,
                      onChanged: (value){
                        setState(() {
                          silderValue = value;
                        });
                      })
                ],
              ),
            ),

        ),);
  }
}
