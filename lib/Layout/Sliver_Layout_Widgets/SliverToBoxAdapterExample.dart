import 'package:flutter/material.dart';

class SliverToBoxAdapterExample extends StatelessWidget {
  const SliverToBoxAdapterExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SliverToBoxAdapter Example'),
      ),
      body: CustomScrollView(
        slivers: [
          // SliverAppBar
          SliverAppBar(
            expandedHeight: 200.0,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('SliverToBoxAdapter Example'),
              background: Image.network(
                'https://via.placeholder.com/600x400',
                fit: BoxFit.cover,
              ),
            ),
          ),

          // SliverToBoxAdapter
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.all(16),
              color: Colors.lightBlueAccent,
              child: Text(
                'This is a regular widget inserted inside the CustomScrollView using SliverToBoxAdapter.',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ),

          // Another SliverToBoxAdapter with different content
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  Text('This is another SliverToBoxAdapter with a Column.'),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Click Me'),
                  ),
                ],
              ),
            ),
          ),

          // SliverList
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return ListTile(
                  title: Text('Item ${index + 1}'),
                );
              },
              childCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}

