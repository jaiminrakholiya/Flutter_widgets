import 'package:flutter/material.dart';

class CustomScrollViewExample extends StatelessWidget {
  const CustomScrollViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CustomScrollView Example'),
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200.0,
            floating: true,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('SliverAppBar'),
              background: Image.network(
                'https://via.placeholder.com/400x300',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return ListTile(
                  leading: CircleAvatar(
                    child: Text('${index + 1}'),
                  ),
                  title: Text('Item ${index + 1}'),
                );
              },
              childCount: 20, // Number of list items
            ),
          ),
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return Container(
                  color: Colors.blue[(index % 9 + 1) * 100],
                  child: Center(
                    child: Text(
                      'Grid Item ${index + 1}',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                );
              },
              childCount: 12, // Number of grid items
            ),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, // Number of columns
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
          ),
        ],
      ),
    );
  }
}


