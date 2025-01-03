import 'package:flutter/material.dart';

class TableExamples extends StatelessWidget {
  const TableExamples({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Table Examples'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SimpleTableExample()),
                );
              },
              child: Text('Simple Table Example'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AdvancedTableExample()),
                );
              },
              child: Text('Advanced Table Example'),
            ),
          ],
        ),
      ),
    );
  }
}

class SimpleTableExample extends StatelessWidget {
  const SimpleTableExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Table Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Table(
          border: TableBorder.all(color: Colors.black), // Adds border to the table
          defaultColumnWidth: FixedColumnWidth(100.0), // Fixed column width
          children: [
            TableRow(
              children: [
                Text(
                  'Name',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  'Age',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  'City',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            TableRow(
              children: [
                Text('Alice'),
                Text('25'),
                Text('New York'),
              ],
            ),
            TableRow(
              children: [
                Text('Bob'),
                Text('30'),
                Text('Los Angeles'),
              ],
            ),
            TableRow(
              children: [
                Text('Charlie'),
                Text('35'),
                Text('Chicago'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class AdvancedTableExample extends StatelessWidget {
  const AdvancedTableExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Advanced Table Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Table(
          border: TableBorder.all(color: Colors.grey),
          columnWidths: {
            0: FlexColumnWidth(2), // First column gets twice the space
            1: FlexColumnWidth(1), // Second column gets default space
            2: FlexColumnWidth(3), // Third column gets three times the space
          },
          children: [
            TableRow(
              decoration: BoxDecoration(color: Colors.grey[300]), // Row styling
              children: [
                Text('Product', style: TextStyle(fontWeight: FontWeight.bold)),
                Text('Price', style: TextStyle(fontWeight: FontWeight.bold)),
                Text('Quantity', style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
            TableRow(
              children: [
                Text('Laptop'),
                Text('\$1000'),
                Text('5'),
              ],
            ),
            TableRow(
              children: [
                Text('Smartphone'),
                Text('\$500'),
                Text('10'),
              ],
            ),
            TableRow(
              children: [
                Text('Headphones'),
                Text('\$200'),
                Text('15'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
