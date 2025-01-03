import 'package:flutter/material.dart';

class SliverFixedExtentListExample extends StatelessWidget {
  const SliverFixedExtentListExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200.0,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('SliverFixedExtentList Example'),
              background: Image.network(
                'https://via.placeholder.com/600x400',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverFixedExtentList(
            itemExtent: 100.0, // Fixed height for each list item
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.blue[(index % 9 + 1) * 100],
                  child: Text(
                    'Item ${index + 1}',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                );
              },
              childCount: 20, // Number of items in the list
            ),
          ),
        ],
      ),
    );
  }
}

