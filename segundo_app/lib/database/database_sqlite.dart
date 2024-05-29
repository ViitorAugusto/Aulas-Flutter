import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';


class DatabaseSqlite {
  Future<void> openConnection() async {
    final databasePath = await getDatabasesPath();
    final databaseFinalPath = join(databasePath, 'database.db');

      print('OnCreated Chamado');

    await openDatabase(
      databaseFinalPath,
      version: 1,
      // Chamado quando o banco de dados é criado pela primeira vez.
      onCreate: (db, version) {
       final batch = db.batch();
        batch.execute('''CREATE TABLE teste (
          id INTEGER PRIMARY KEY AUTOINCREMENT, 
          name varchar(200)
          )''');
          print('OnCreated Chamado');
        batch.commit();
      },
     
     // Chamado quando o banco de dados é atualizado.
     onUpgrade: (Database db, int oldVersion, int newVersion) {
        print('onUpgrade Chamado');
      },

      // Chamado quando o banco de dados é rebaixado.
      onDowngrade: (Database db, int oldVersion, int newVersion) {
        print('onDowngrade');
      },
    );
  }
}
