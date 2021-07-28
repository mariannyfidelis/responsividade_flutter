import 'package:sqflite/sqflite.dart' as sql;
import 'package:path/path.dart' as path;

class DBUtil {
  static Future<sql.Database> database() async {
    final dbPath = await sql.getDatabasesPath();
    final localBancoDados = path.join(dbPath, "gerenciadorGastos.db");

    var bd = await sql.openDatabase(localBancoDados,
        version: 1,
        onCreate: (db, versaoRecente) {
          db.execute(
              "CREATE TABLE conta(id INTEGER PRIMARY KEY AUTOINCREMENT, titulo VARCHAR(50), saldo REAL)");
      //_createDb(db);

    }, );
    print("Aberto: " + bd.isOpen.toString());

    return bd;
  }

  static void _createDB(sql.Database db) {
    db.execute(
        """ CREATE TABLE conta(id INTEGER PRIMARY KEY AUTOINCREMENT, titulo VARCHAR(50), saldo REAL)""");
  }

  static void insertData(String table, Map<String, dynamic> dados) async {
    final db = await DBUtil.database();
    await db.insert(table, dados,
        conflictAlgorithm: sql.ConflictAlgorithm.replace);
  }

  static Future<List<Map<String, dynamic>>> getData(String table) async{
    final db = await DBUtil.database();
    return db.query(table);
  }

}
