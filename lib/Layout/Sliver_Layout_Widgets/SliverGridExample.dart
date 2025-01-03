import 'package:flutter/material.dart';

class SliverGridExample extends StatelessWidget {
  const SliverGridExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SliverGrid Examples'),
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200.0,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('SliverGrid'),
              background: Image.network(
                'https://via.placeholder.com/600x400',
                fit: BoxFit.cover,
              ),
            ),
          ),

          // SliverGrid with Fixed Cross Axis Count
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'SliverGrid with Fixed Cross Axis Count',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, // Number of columns
              crossAxisSpacing: 10.0, // Space between columns
              mainAxisSpacing: 10.0, // Space between rows
            ),
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return Container(
                  color: Colors.blue[(index % 9 + 1) * 100],
                  alignment: Alignment.center,
                  child: Text(
                    'Item ${index + 1}',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                );
              },
              childCount: 12, // Number of items
            ),
          ),

          // SliverGrid with Max Cross Axis Extent
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'SliverGrid with Max Cross Axis Extent',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 150.0, // Maximum width of each item
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
            ),
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return Container(
                  color: Colors.green[(index % 9 + 1) * 100],
                  alignment: Alignment.center,
                  child: Text(
                    'Item ${index + 1}',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                );
              },
              childCount: 12, // Number of items
            ),
          ),
        ],
      ),
    );
  }
}

