import 'package:database_new/data/local/db_helper.dart';
import 'package:flutter/material.dart';

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
    // TODO: implement build
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
          // Notes to be added here
          bool check = await dbRef!.insertNote(
            mtitle: "This is First Title",
            mdesc: "This is First Desc",
          );

          if (check) {
            // getNotes();
          }
        },

        child: Icon(Icons.add),
      ),
    );
  }
}
