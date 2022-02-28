import 'package:flutter/material.dart';

class SimplePage extends StatelessWidget {
  const SimplePage({
    Key? key,
    required this.child,
    this.title,
    required this.bottomAppBar,
  }) : super(key: key);
  final Widget child;
  final String? title;
  final bool bottomAppBar;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: (title != null)
          ? AppBar(
              title: Text(title ?? ''),
            )
          : null,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(child: child),
            if (bottomAppBar) customBottomBar()
          ],
        ),
      ),
      // bottomNavigationBar:
    );
  }

  Widget customBottomBar() {
    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
              icon: const Icon(Icons.crop_square_rounded), onPressed: () {}),
          IconButton(icon: const Icon(Icons.search_rounded), onPressed: () {}),
          IconButton(icon: const Icon(Icons.person_rounded), onPressed: () {}),
        ],
      ),
    );
  }
}
