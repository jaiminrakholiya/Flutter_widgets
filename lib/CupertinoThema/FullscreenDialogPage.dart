import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FullscreenDialogPage extends StatelessWidget {
  const FullscreenDialogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Fullscreen Dialog'),
      ),
      child: SafeArea(
        child: Center(
          child: CupertinoButton.filled(
            child: Text('Show Fullscreen Dialog'),
            onPressed: () {
              Navigator.of(context).push(
                CupertinoPageRoute(
                  builder: (context) => FullscreenDialogContent(),
                  fullscreenDialog: true,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class FullscreenDialogContent extends StatelessWidget {
  const FullscreenDialogContent({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Fullscreen Dialog Content'),
      ),
      child: SafeArea(
        child: Center(
          child: CupertinoButton.filled(
            child: Text('Back'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
      ),
    );
  }
}
