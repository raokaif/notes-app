import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/add_note_page.dart';

class NotesPage extends StatelessWidget {
  const NotesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(249, 249, 249, 1),
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              CupertinoIcons.ellipsis_circle,
              size: 30,
              color: Colors.amber,
            ),
          ),
        ],
        backgroundColor: const Color.fromRGBO(249, 249, 249, 1),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Notes', style: Theme.of(context).textTheme.titleLarge),
            SizedBox(height: 10),
            SizedBox(
              height: 35,
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[200],

                  hintText: 'Search',
                  prefixIcon: Icon(CupertinoIcons.search, color: Colors.grey),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            SizedBox(height: 18),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SizedBox(
          height: 50,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: Text('0 Notes', style: TextStyle(fontSize: 16)),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return AddNotePage();
                        },
                      ),
                    );
                  },
                  icon: Icon(
                    CupertinoIcons.square_pencil,
                    color: Colors.amber,
                    size: 30,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
