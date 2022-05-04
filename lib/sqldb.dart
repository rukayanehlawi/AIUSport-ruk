import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
class SqlDb{

  static Database? _db;

  Future <Database?> get db async{
    if(_db==null){
      _db =await intialDb();
      return _db;
    }else{
    return _db;
    }
  }

  intialDb()async{
    String databasepath=await getDatabasesPath();
    String path=join(databasepath,'aiusport.db');
    Database teamdb=await openDatabase(path,onCreate: _onCreate,version: 1,onUpgrade: _onUpgrade);
    return teamdb;
  }
  _onUpgrade(Database db,int oldversion,int newversion){

    print("onUpgrade ===========");
  }
   _onCreate(Database db,int version)async{
    await db.execute("CREATE TABLE teams (id INTEGER PRIMARY KEY,team_name TEXT,plane TEXT,player1 TEXT,postion1 TEXT,player2 TEXT,postion2 TEXT,player3 TEXT,postion3 TEXT,player4 TEXT,postion4 TEXT,player5 TEXT,postion5 TEXT,player6 TEXT,postion6 TEXT)");
    print("onCreate =========================== ");
   }


   readData(String sql)async{
    Database? mydb = await db;
    List<Map> response= await mydb!.rawQuery(sql);
    return response;
   }

 Future<int> insertData(String sql)async{
    Database? mydb = await db;
    int response= await mydb!.rawInsert(sql);
    return response;
  }

  updateData(String sql)async{
    Database? mydb = await db;
    int response= await mydb!.rawUpdate(sql);
    return response;
  }

  deleteData(String sql)async{
    Database? mydb = await db;
    int response= await mydb!.rawDelete(sql);
    return response;
  }
}