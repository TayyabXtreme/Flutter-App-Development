import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {
  DBHelper._();

  static DBHelper getInstance() {
    return DBHelper._();
  }

  static final String TABLE_NOTE = "note";
  static final String COLUMN_NOTE_SNO = "s_no";
  static final String COLUMN_NOTE_TITLE = "title";
  static final String COLUMN_NOTE_DESC = "desc";

  Database? myDB;

  Future<Database> getDB() async {
    myDB = myDB ?? await openDB();
    return myDB!;
  }

  Future<Database> openDB() async {
    Directory appDir = await getApplicationDocumentsDirectory();
    String dbpath = join(appDir.path, "noteDB.db");
    return await openDatabase(dbpath, onCreate: (db, version) {
      db.execute(
          'create table $TABLE_NOTE ($COLUMN_NOTE_SNO integer primary key autoincrement, $COLUMN_NOTE_TITLE text, $COLUMN_NOTE_DESC text ) ');
    }, version: 1);
  }

  Future<bool> addNote({required String mTitle, required String mDesc}) async {
    var db = await getDB();
    int rowsEffected = await db.insert(
        TABLE_NOTE, {COLUMN_NOTE_TITLE: mTitle, COLUMN_NOTE_DESC: mDesc});
    return (rowsEffected > 0);
  }

  Future<List<Map<String, dynamic>>> getAllNodes() async {
    var db = await getDB();
    return await db.query(
      TABLE_NOTE,
      columns: [COLUMN_NOTE_SNO, COLUMN_NOTE_TITLE, COLUMN_NOTE_DESC],
    );
  }

  Future<bool> updateNode(
      {required String mTitle, required String mDesc, required int sno}) async {
    var db = await getDB();

    int rowsEffected = await db.update(
        TABLE_NOTE, {COLUMN_NOTE_TITLE: mTitle, COLUMN_NOTE_DESC: mDesc},
        where: "$COLUMN_NOTE_SNO = $sno");
    return (rowsEffected > 0);
  }

  Future<bool> deleteNode({required int sno}) async {
    var db = await getDB();
    int rowsEffected = await db
        .delete(TABLE_NOTE, where: '$COLUMN_NOTE_SNO = ?', whereArgs: ['$sno']);

    return (rowsEffected > 0);
  }
}
