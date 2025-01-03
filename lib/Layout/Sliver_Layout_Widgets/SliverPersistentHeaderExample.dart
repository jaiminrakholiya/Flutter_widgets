import 'package:flutter/material.dart';

class SliverPersistentHeaderExample extends StatelessWidget {
  const SliverPersistentHeaderExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200.0,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('SliverPersistentHeader Example'),
              background: Image.network(
                'https://via.placeholder.com/600x400',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverPersistentHeader(
            delegate: _SliverAppBarDelegate(
              minExtent: 50.0, // Minimum height of the header
              maxExtent: 200.0, // Maximum height of the header
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return ListTile(
                  title: Text('Item ${index + 1}'),
                );
              },
              childCount: 20,
            ),
          ),
        ],
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final double minExtent;
  final double maxExtent;

  _SliverAppBarDelegate({required this.minExtent, required this.maxExtent});



  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Colors.blue,
      alignment: Alignment.center,
      child: Text(
        'Custom Persistent Header',
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
    );
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}


