import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';

class DbHelper {
  static final TABLE_NAME = "Notes";
  static final COL_ID = "id";
  static final COL_TITLE = "name";
  static final COL_DESC = "description";

  DbHelper._();

  static final DbHelper getInstance = DbHelper._();

  Database? myDB;

  // Open Database

  Future<Database> getDB() async {
    //  var dbRef = myDB ?? await openDB();
    // return myDB ?? await openDB();

    // myDB = myDB ?? await openDB();
    // return myDB!;

    myDB ??= await openDB();
    return myDB!;

    //   if (myDB != null) {
    //     return myDB!;
    //   } else {
    //     myDB = await openDB();
    //     return myDB!;
    //   }
  }

  Future<Database> openDB() async {
    // Get the location of our apps directory. This is where files for our app are stored.
    Directory appDir = await getApplicationDocumentsDirectory();

    // Create the path to the database file
    String dbPath = join(appDir.path, "myNotes.db");

    // Open the database, creating it if it doesn't exist
    return await openDatabase(
      dbPath,
      version: 1,
      onCreate: (db, version) {
        /// Create tables
        db.execute(
          "Create table $TABLE_NAME($COL_ID INTEGER PRIMARY KEY AUTOINCREMENT, $COL_TITLE TEXT, $COL_DESC TEXT)",
        );
      },
    );
  }

  /// All CRUD Operations / Quaries will be here
  /// insertion
  Future<bool> insertNote({
    required String mtitle,
    required String mdesc,
  }) async {
    var db = await getDB();
    int rowsEffected = await db.insert(TABLE_NAME, {
      COL_TITLE: mtitle,
      COL_DESC: mdesc,
    });
    return rowsEffected > 0;
  }

  /// Reading all Data
  Future<List<Map<String, dynamic>>> getAllNotes() async {
    var db = await getDB();
    List<Map<String, dynamic>> mData = await db.query(TABLE_NAME);
    return mData;
  }
}
