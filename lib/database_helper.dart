import 'package:sqflite/sqflite.dart';
import 'dart:async';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:wdl_project/note.dart';

class DatabaseHelper {
  static DatabaseHelper _databaseHelper;
  static Database _database;

  String noteTable = 'note_table';
  String colItem = 'item';
  String colQuantity = 'quantity';
  String colRate = 'rate';

  DatabaseHelper._createInstance();

  factory DatabaseHelper() {
    if (_databaseHelper == null) {
      _databaseHelper = DatabaseHelper._createInstance();
    }
    return _databaseHelper;
  }

  Future<Database> get database async {
    if (_database == null) {
      _database = await initializeDatabase();
    }
    return _database;
  }

  Future<Database> initializeDatabase() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String path = directory.path + 'notes.db';
    var noteDatabase =
        await openDatabase(path, version: 1, onCreate: _createDb);
    return noteDatabase;
  }

  void _createDb(Database db, int newVersion) async {
    await db.execute(
        'CREATE TABLE $noteTable($colItem TEXT, $colQuantity INTEGER $colRate INTEGER)');
  }

//fetch operation:get all object from database
  Future<List<Map<String, dynamic>>> getNoteMapList() async {
    Database db = await this.database;

    //var result=await db.rawQuery('SELECT * FROM $noteTable order by $colItem ASC');
    var result = await db.query(noteTable, orderBy: '$colItem ASC');
    return result;
  }

//insert operation:insert a note object to database
  Future<int> insertNote(Note note) async {
    Database db = await this.database;
    var result = await db.insert(noteTable, note.toMap());
    return result;
  }

//update operation:update a note object and save it to database
  Future<int> updateNote(Note note) async {
    var db = await this.database;
    var result = await db.update(noteTable, note.toMap(),
        where: '$colItem=?', whereArgs: [note.item]);
    return result;
  }

//delete operation:delete a note object from database
  Future<int> deleteNote(int item) async {
    var db = await this.database;
    int result =
        await db.rawDelete('DELETE FROM $noteTable WHERE $colItem=$item');
    return result;
  }

//get number of note in database
  Future<int> getCount() async {
    Database db = await this.database;
    List<Map<String, dynamic>> x =
        await db.rawQuery('SELECT COUNT (*) from $noteTable');
    int result = Sqflite.firstIntValue(x);
    return result;
  }

//get the 'map list' [List<Map>] and convert it to 'Note List' [List<Note>]
  Future<List<Note>> getNoteList() async {
    var noteMapList = await getNoteMapList();
    int count = noteMapList.length;
    List<Note> noteList = List<Note>();
    for (int i = 0; i < count; i++) {
      noteList.add(Note.fromMapObject(noteMapList[i]));
    }
    return noteList;
  }
}
