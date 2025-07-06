import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddNotePage extends StatelessWidget {
  const AddNotePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.share)),
          IconButton(
            onPressed: () {},
            icon: Icon(CupertinoIcons.ellipsis_circle),
          ),
          TextButton(onPressed: () {}, child: Text('Done')),
        ],
      ),
    );
  }
}
