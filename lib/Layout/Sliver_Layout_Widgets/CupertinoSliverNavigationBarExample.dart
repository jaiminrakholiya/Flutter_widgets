import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoSliverNavigationBarExample extends StatelessWidget {
  const CupertinoSliverNavigationBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CupertinoPageScaffold(
        child: CustomScrollView(
          slivers: [
            CupertinoSliverNavigationBar(
              largeTitle: Text('Contacts'), // Large title
              leading: CupertinoButton(
                padding: EdgeInsets.zero,
                onPressed: () {
                  print('Back pressed');
                },
                child: Icon(CupertinoIcons.back),
              ),
              trailing: CupertinoButton(
                padding: EdgeInsets.zero,
                onPressed: () {
                  print('Add pressed');
                },
                child: Icon(CupertinoIcons.add),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                  return ListTile(
                    title: Text('Contact ${index + 1}'),
                    subtitle: Text('Details for contact ${index + 1}'),
                    leading: CircleAvatar(
                      child: Text('${index + 1}'),
                    ),
                  );
                },
                childCount: 20, // Number of list items
              ),
            ),
          ],
        ),
      ),
    );
  }
}

