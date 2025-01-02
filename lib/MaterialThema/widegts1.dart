import 'package:flutter/material.dart';

class BasicWidget extends StatefulWidget {
  const BasicWidget({super.key});

  @override
  State<BasicWidget> createState() => _BasicWidgetState();
}

class _BasicWidgetState extends State<BasicWidget> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // Get the screen width and height using MediaQuery
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Day 1 of Flutter',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.all(20),
                color: Colors.amber[600],
                height: screenHeight * 0.2,
              ),
            ),
            Text.rich(TextSpan(text: 'hello', children: [
              TextSpan(
                  text: ' beautiful ',
                  style: TextStyle(fontStyle: FontStyle.italic, fontSize: 20)),
              TextSpan(
                  text: 'world',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            ])),
            SizedBox(height: 5),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'features faster flutter',
                    textAlign: TextAlign.center,
                  ),
                ),
                Expanded(
                  child: Text(
                    'features faster flutter',
                    textAlign: TextAlign.center,
                  ),
                ),
                Expanded(
                  child: FittedBox(
                    child: FlutterLogo(),
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('button enabled'),
            ),
            SizedBox(height: 10),
            Image.asset(
              'assets/on2img.png',
              height: screenHeight * 0.25,
            ),
            SizedBox(
              height: 10,
            ),
            Image.network(
              'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
              height: screenHeight * 0.25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.lock_clock,
                  color: Colors.pink,
                  size: 24.0,
                  semanticLabel: 'Text to announce in accessibility modes',
                ),
                Icon(
                  Icons.phone_android,
                  color: Colors.green,
                  size: 30.0,
                ),
                Icon(
                  Icons.holiday_village,
                  color: Colors.blue,
                  size: 36.0,
                ),
              ],
            ),
            SizedBox(
              height: 150, // Specify a height
              child: ListView(
                shrinkWrap: true,
                children: [
                  Text('flutter'),
                  Text('flutter'),
                  Text('flutter'),
                  Text('flutter'),
                ],
              ),
            ),
            SizedBox(
              height: 200, // Limit the height for the ListView.builder
              child: ListView.builder(
                itemCount: 10, // Number of items in the list
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Item ${index + 1}',
                      style: TextStyle(fontSize: 16),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 300, // Limit the height for GridView.builder
              child: GridView.builder(
                itemCount: 6, // Number of grid items
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: screenWidth > 600 ? 3 : 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 1.0,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.blue[(index + 1) * 100],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      'Grid ${index + 1}',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  );
                },
              ),
            ),
            //stack
            Stack(
              children: <Widget>[
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                ),
                Container(
                  width: 90,
                  height: 90,
                  color: Colors.green,
                ),
                Container(
                  width: 80,
                  height: 80,
                  color: Colors.blue,
                ),
              ],
            ),
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Mascot Name',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
