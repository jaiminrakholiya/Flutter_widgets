import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Theme Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'This is a headline',
              style: Theme.of(context).textTheme.displayLarge, // Using the theme
            ),
            Text(
              'This is body text',
              style: Theme.of(context).textTheme.bodyLarge, // Using the theme
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Button with primary color'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).primaryColor, // Accessing primary color
              ),
            ),
          ],
        ),
      ),
    );
  }
}