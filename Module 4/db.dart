import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
class DbHelper
{
  late Database db;

  Future open()async
  {
    var path = await getDatabasesPath();
    String a = join(path,"emp.db");
    print(a);
    
      db = await openDatabase(a,version: 1,
        onCreate:(Database db, int version) async
        {
            await db.execute('''
              
              CREATE TABLE IF NOT EXISTS info( 
                          id primary key,
                          name varchar(255) not null,
                          email varchar(255) not null,
                          password varchar(255) not null
                      );
            
            
            
            ''');
            print("table creared");
        });
    
    
  }

  
}