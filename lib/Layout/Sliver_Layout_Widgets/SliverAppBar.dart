import 'package:flutter/material.dart';

class SliverAppBarExample extends StatelessWidget {
  const SliverAppBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 100.0, // Height when expanded
            pinned: true, // Keeps the app bar visible at the top
            flexibleSpace: FlexibleSpaceBar(
              title: Text('SliverAppBar'),
              background: Image.network(
                'https://via.placeholder.com/600x400',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return ListTile(
                  title: Text('Item ${index + 1}'),
                  leading: Icon(Icons.star),
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

