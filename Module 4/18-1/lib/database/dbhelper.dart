import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';


class DbHelper
{
  //dbname and version
  static final _dbname ="tops.db";
  static final _dbversion = 1;

  //category table detail
  static final _tablename="category";
  static final columnId = '_id';
  static final columnname = 'category_name';

  //contact table detail
  static final tableContact = 'contact';
  static final columnId1 = '_id';
  static final columnName = 'name';
  static final columnLName = 'lname';
  static final columnMobile = 'mobile';
  static final columnEmail = 'email';
  static final columnCategory = 'cat';
  static final columnProfile = 'profile';

  //private constructor
  DbHelper._privateconstructor();

  //db object
  Database? _database;

  //initialization
  static final DbHelper instance = DbHelper._privateconstructor();

  Future<Database> get database async => _database ??= await _initDatabase();

  _initDatabase()async
  {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();

    String path = join(documentsDirectory.path, _dbname);
    return await openDatabase
      (path, version: _dbversion, onCreate: _onCreate);
  }

  Future<void> _onCreate(Database db, int version) async
  {
    await db.execute('''
          CREATE TABLE $_tablename 
          (
            $columnId INTEGER PRIMARY KEY,
            $columnname TEXT NOT NULL 
          )
          ''');

    await db.execute('''
          CREATE TABLE $tableContact (
            $columnId1 INTEGER PRIMARY KEY,
            $columnName TEXT NOT NULL, 
            $columnLName TEXT NOT NULL, 
            $columnMobile TEXT NOT NULL, 
            $columnEmail TEXT NOT NULL, 
            $columnCategory TEXT NOT NULL, 
            $columnProfile TEXT NOT NULL
          )
          ''');
  }

  //insert
  Future<int> insert(Map<String, dynamic> row) async
  {
    Database? db = await instance.database;
    return await db.insert(_tablename, row);
  }
  //view
  Future<List<Map<String, dynamic>>> queryAllRows() async {
    Database db = await instance.database;
    return await db.query(_tablename);//select * from category
  }

  //contact insert
  Future<int> contactinsert(Map<String, dynamic> row) async
  {
    Database? db = await instance.database;
    return await db.insert(tableContact, row);
  }

}