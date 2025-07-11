import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddNotePage extends StatefulWidget {
  const AddNotePage({super.key});

  @override
  State<AddNotePage> createState() => _AddNotePageState();
}

class _AddNotePageState extends State<AddNotePage> {
  TextEditingController notesController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(CupertinoIcons.share, color: Colors.amber, size: 25),
          ),
          SizedBox(width: 20),
          IconButton(
            onPressed: () {},
            icon: Icon(
              CupertinoIcons.ellipsis_circle,
              color: Colors.amber,
              size: 25,
            ),
          ),
          SizedBox(width: 20),

          TextButton(
            onPressed: () {},
            child: Text('Done', style: Theme.of(context).textTheme.titleSmall),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          cursorHeight: 50,
          cursorColor: Colors.amber,
          expands: true,
          maxLines: null,
          minLines: null,
          keyboardType: TextInputType.multiline,
          decoration: InputDecoration(border: InputBorder.none),
        ),
      ),
    );
  }
}
