import 'package:flutter/material.dart';

class LayoutBuilderExample extends StatelessWidget {
  const LayoutBuilderExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LayoutBuilder Example'),
      ),
      body: Center(
        child: LayoutBuilder(
          builder: (context, constraints) {
            // Print the constraints
            print('Max Width: ${constraints.maxWidth}, Max Height: ${constraints.maxHeight}');
            // You can adjust the layout based on the width of the available space
            if (constraints.maxWidth > 600) {
              // If the available width is greater than 600, show a wider layout
              return Container(
                color: Colors.blue,
                width: 500,
                height: 200,
                child: Center(
                  child: Text(
                    'Wide Layout',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              );
            } else {
              // If the available width is less than 600, show a narrower layout
              return Container(
                color: Colors.green,
                width: 200,
                height: 100,
                child: Center(
                  child: Text(
                    'Narrow Layout',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}

