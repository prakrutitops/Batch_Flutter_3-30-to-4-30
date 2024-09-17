import 'dart:async';
import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class MyDbHelper
{

  //db details
  static final dbname ="flutter.db";
  static final dbversion =1;

  //category table details
  static final tablename ="category";
  static final catid ="id";
  static final catname ="c_name";

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
    String path = join(documentsDirectory.path,dbname);
    return await openDatabase
      (path, version: dbversion, onCreate: _onCreate);
  }

  FutureOr<void> _onCreate(Database db, int version) async
  {
    await db.execute('''
          CREATE TABLE $tablename 
          (
            $catid INTEGER PRIMARY KEY,
            $catname TEXT NOT NULL 
          )
          ''');
  }

  Future<int>insert(Map<String,dynamic>row) async
  {
    Database? db = await instance.database;
    return await db.insert(tablename, row);
  }




}