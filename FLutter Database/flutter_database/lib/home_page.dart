import 'package:flutter/material.dart';
import 'package:flutter_database/data/local/db_helper.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomepageState();
}

class _HomepageState extends State<HomePage> {
  List<Map<String, dynamic>> allNotes = [];
  DbHelper? dbRef;

  @override
  void initState() {
    super.initState();
    dbRef = DbHelper.getInstance;
    getNotes();
  }

  void getNotes() async {
    allNotes = await dbRef!.getAllNotes();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Page')),
      body: allNotes.isNotEmpty
          ? ListView.builder(
              itemBuilder: (_, index) {
                return ListTile(
                  leading: Text('${allNotes[index][DbHelper.COL_ID]}'),
                  title: Text(allNotes[index][DbHelper.COL_TITLE]),
                  subtitle: Text(allNotes[index][DbHelper.COL_DESC]),
                );
              },
              itemCount: allNotes.length,
            )
          : Center(child: Text('No Data Here')),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          showModalBottomSheet(
            context: context,
            // isScrollControlled: true,
            builder: (context) {
              return BottomSheetView(onNoteAdded: getNotes);
            },
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class BottomSheetView extends StatefulWidget {
  final VoidCallback onNoteAdded;

  BottomSheetView({required this.onNoteAdded});
  @override
  State<BottomSheetView> createState() => _BottomSheetViewState();
}

class _BottomSheetViewState extends State<BottomSheetView> {
  TextEditingController titleController = TextEditingController();
  TextEditingController descController = TextEditingController();
  DbHelper? dbRef;

  @override
  void initState() {
    super.initState();
    dbRef = DbHelper.getInstance;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 400,
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(height: 20),
          Text(
            'ADD NOTES HERE',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              fontFamily: 'Arial',
              color: Colors.blue,
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: titleController,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 2.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 1.0),
                ),
                border: OutlineInputBorder(),
                labelText: 'Title *',
                hintText: 'Enter Note Title',
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: descController,
              maxLines: 4,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 2.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 1.0),
                ),
                border: OutlineInputBorder(),
                labelText: 'Description *',
                hintText: 'Enter Note Desc',
              ),
            ),
          ),

          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Colors.blue),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  onPressed: () async {
                    String title = titleController.text.toString();
                    String desc = descController.text.toString();

                    if (title.isNotEmpty && desc.isNotEmpty) {
                      bool check = await dbRef!.insertNote(
                        mtitle: title,
                        mdesc: desc,
                      );

                      if (check) {
                        widget.onNoteAdded();

                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Note Added Successfully')),
                        );
                        Navigator.pop(context);
                      }
                    } else {
                      // Show error
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Please fill all fields')),
                      );
                      Navigator.pop(context);
                    }
                  },
                  child: Text('Add Note'),
                ),
              ),

              SizedBox(width: 10),
              Expanded(
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Colors.blue),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0), 
                    ),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Cancel'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
