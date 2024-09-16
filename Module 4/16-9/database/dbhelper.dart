import 'dart:async';
import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class MyDbHelper
{

  //db details
  static final _dbname ="flutter.db";
  static final _dbversion =1;

  //category table details
  static final _tablename ="category";
  static final _catid ="id";
  static final _catname ="c_name";

  //database object
  Database? database1;

  //private constructor
  MyDbHelper._a();

  //class initialization
  static final MyDbHelper instance = MyDbHelper._a();

  Future<Database> get database async => database1 ??= await _initDatabase();

  _initDatabase()async
  {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path,_dbname);
    return await openDatabase
      (path, version: _dbversion, onCreate: _onCreate);
  }

  FutureOr<void> _onCreate(Database db, int version) async
  {
    await db.execute('''
          CREATE TABLE $_tablename 
          (
            $_catid INTEGER PRIMARY KEY,
            $_catname TEXT NOT NULL 
          )
          ''');


  }
}