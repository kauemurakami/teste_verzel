import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'dart:io';
import 'dart:async';

class DatabaseHelper {
  static final DatabaseHelper _instance = new DatabaseHelper.internal();

  factory DatabaseHelper() => _instance;

  static Database _db;

  Future<Database> get db async {
    if (_db != null) {
      return _db;
    }
    _db = await initDb();
    return _db;
  }

  DatabaseHelper.internal();

  // create database
  initDb() async {
    Directory documentDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentDirectory.path, "db.db");
    var ourDb = await openDatabase(path, version: 1, onCreate: _onCreate);
    return ourDb;
  }

  _onCreate(Database db, int version) async {
    String sql =
        "CREATE TABLE Usuarios (id INTEGER PRIMARY KEY AUTOINCREMENT, nome TEXT, email TEXT, dataNasc TEXT, cpf TEXT, cep TEXT, endereco TEXT, numero TEXT, senha TEXT)";
    await db.execute(sql);
    sql =
        "CREATE TABLE tarefas(id INTEGER PRIMARY KEY AUTOINCREMENT, nome TEXT, dataEntrega TEXT, dataConclusão TEXT)";
    await db.execute(sql);
    // sql =
    //     "CREATE TABLE usuario_tarefa(id INTEGER PRIMARY KEY AUTOINCREMENT, nome TEXT, dataEntrega TEXT, dataConclusão TEXT, userId INTEGER, FOREIGN KEY (userId) REFERENCES usuarios(id) ON DELETE NO ACTION ON UPDATE NO ACTION, tarefaId INTEGER, FOREIGN KEY (id) REFERENCES tarefas(id) ON DELETE NO ACTION ON UPDATE NO ACTION";
    // await db.execute(sql);
  }
}
