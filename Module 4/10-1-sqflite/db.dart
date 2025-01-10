import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
class MyDb
{

    late Database db;

    Future open() async
    {
      var dbpath = await getDatabasesPath();
      String path = join(dbpath,'tops.db');
      print(path);

      db = await openDatabase(path,version: 1,
          onCreate: (Database db, int version)async
        {
          await db.execute('''
            
             CREATE TABLE IF NOT EXISTS students( 
                          id primary key,
                          fname varchar(255) not null,
                          lname varchar(255) not null,
                          email varchar(255) not null
                      );

                      //create more table here''');
        });

      print("table created");


    }

}