import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/add_note_page.dart';
import 'package:notes_app/notes_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> folderNames = ['Notes'];

  String generateName() {
    String baseName = 'New Folder';
    String name = baseName;
    if (!folderNames.contains(name)) return name;

    int i = 1;
    while (folderNames.contains('$name $i')) {
      i++;
    }

    return '$name $i';
  }

  void g(String name) {
    setState(() {
      folderNames.add(name);
    });
  }

  void _showAddFolderSheet(BuildContext context) {
    String name = generateName();
    TextEditingController nameController = TextEditingController(text: name);
    showModalBottomSheet(
      backgroundColor: const Color.fromRGBO(251, 251, 253, 1),
      context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return FractionallySizedBox(
          heightFactor: 0.9,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                SizedBox(
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            'Cancel',
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          'New Folder',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: TextButton(
                          onPressed: () {
                            g(nameController.text);
                            Navigator.pop(context);
                          },
                          child: Text(
                            'Done',
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        CupertinoIcons.clear_circled_solid,
                        color: const Color.fromARGB(255, 209, 207, 207),
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        );
      },
    );
  }

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(251, 251, 253, 1),
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {},
            child: Text('Edit', style: Theme.of(context).textTheme.titleSmall),
          ),
        ],
        backgroundColor: const Color.fromRGBO(251, 251, 253, 1),
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
                  prefixIcon: Icon(CupertinoIcons.search, color: Colors.grey),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            SizedBox(height: 18),

            Expanded(
              child: ListView.builder(
                itemCount: folderNames.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return NotesPage();
                            },
                          ),
                        );
                      },
                      child: ListTile(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        tileColor: Colors.white,

                        leading: Icon(
                          CupertinoIcons.folder,
                          color: Colors.amber,
                          size: 30,
                        ),
                        title: Text(folderNames[index]),
                        trailing: SizedBox(
                          width: 40,
                          child: Row(
                            children: [
                              Text(
                                '1',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey,
                                ),
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
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromRGBO(251, 251, 253, 1),
        items: [
          BottomNavigationBarItem(
            tooltip: 'Add folder',
            icon: Icon(
              CupertinoIcons.folder_badge_plus,
              color: Theme.of(context).primaryColor,
              size: 30,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            tooltip: 'Add notes',
            icon: Icon(
              CupertinoIcons.square_pencil,
              color: Theme.of(context).primaryColor,
              size: 30,
            ),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });

          if (index == 0) {
            _showAddFolderSheet(context);
          } else if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return AddNotePage();
                },
              ),
            );
          }
        },
      ),
    );
  }
}
