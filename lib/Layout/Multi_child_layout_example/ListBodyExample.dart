import 'package:flutter/material.dart';

class ListBodyExample extends StatelessWidget {
  const ListBodyExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListBody Example'),
      ),
      body: SingleChildScrollView(
        child: ListBody(
          children:<Widget>[
            Container(
              color: Colors.blue,
              height: 100,
              child: Center(
                child: Text(
                  'Item 1',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 5,),
            Container(
              color: Colors.green,
              height: 100,
              child: Center(
                child: Text(
                  'Item 2',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 5,),
            Container(
              color: Colors.red,
              height: 100,
              child: Center(
                child: Text(
                  'Item 3',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

