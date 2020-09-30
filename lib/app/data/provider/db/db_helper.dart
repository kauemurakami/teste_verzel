import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DBHelper {
  static final DBHelper _dbHelper = DBHelper._internal();

  Database _db;

  get db async {
    if (_db != null) {
      return _db;
    } else {
      _db = await initDb();
      return _db;
    }
  }

  initDb() async {
    final caminhoDB = await getDatabasesPath();
    final localDB = join(caminhoDB, "db.db");
    var db = await openDatabase(localDB, version: 1, onCreate: _onCreateDB);
    return db;
  }

  _onCreateDB(Database db, int version) async {
    String sql =
        "CREATE TABLE usuarios(id INTEGER PRIMIRY KEY AUTOINCREMENT, nome VARCHAR, email VARCHAR, dataNasc VARCHAR, cpf VARCHAR, cep VARCHAR, endereco VARCHAR, numero VARCHAR, senha VARCHAR)";
    await db.execute(sql);
    sql =
        "CREATE TABLE tarefas(id INTEGER PRIMIRY KEY AUTOINCREMENT, nome VARCHAR, dataEntrega VARCHAR, dataConclusão VARCHAR)";
    await db.execute(sql);
    sql =
        "CREATE TABLE usuario_tarefa(id INTEGER PRIMIRY KEY AUTOINCREMENT, nome VARCHAR, dataEntrega VARCHAR, dataConclusão VARCHAR, userId INTEGER, FOREIGN KEY (userId) REFERENCES usuarios(id) ON DELETE NO ACTION ON UPDATE NO ACTION, tarefaId INTEGER, FOREIGN KEY (tarefaId) REFERENCES tarefas(id) ON DELETE NO ACTION ON UPDATE NO ACTION";
    await db.execute(sql);
  }

  factory DBHelper() {
    return _dbHelper;
  }

  DBHelper._internal() {}
}
