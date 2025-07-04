import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(249, 249, 249, 1),
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {},
            child: Text('Edit', style: Theme.of(context).textTheme.titleSmall),
          ),
        ],
        backgroundColor: const Color.fromRGBO(249, 249, 249, 1),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Folders', style: Theme.of(context).textTheme.titleLarge),
            SizedBox(height: 10),
            SizedBox(
              height: 35,
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[200],

                  hintText: 'Search',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            SizedBox(height: 18),
            GestureDetector(
              onTap: () {},
              child: ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                tileColor: Colors.white,

                leading: Icon(
                  Icons.note_outlined,
                  color: Theme.of(context).primaryColor,
                  size: 30,
                ),
                title: Text('Quick Notes'),
                trailing: SizedBox(
                  width: 40,
                  child: Row(
                    children: [
                      Text(
                        '1',
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                      SizedBox(width: 8),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                tileColor: Colors.white,

                leading: Icon(
                  Icons.folder_outlined,
                  color: Theme.of(context).primaryColor,
                  size: 30,
                ),
                title: Text('Notes'),
                trailing: SizedBox(
                  width: 40,
                  child: Row(
                    children: [
                      Text(
                        '1',
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                      SizedBox(width: 8),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromRGBO(249, 249, 249, 1),
        items: [
          BottomNavigationBarItem(
            tooltip: 'Add folder',
            icon: Icon(
              Icons.create_new_folder_outlined,
              color: Theme.of(context).primaryColor,
              size: 30,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            tooltip: 'Add notes',
            icon: Icon(
              Icons.note_add_outlined,
              color: Theme.of(context).primaryColor,
              size: 30,
            ),
            label: '',
          ),
        ],
        currentIndex: 0,
        onTap: (index) {},
      ),
    );
  }
}
