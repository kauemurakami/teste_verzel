import 'package:sqflite/sqflite.dart';
import 'package:teste_verzel/app/data/model/usuario_model.dart';
import 'package:teste_verzel/app/utils/db_helper.dart';

class DB {
  //final DBHelper db = DBHelper();
  final DatabaseHelper db = DatabaseHelper();

  loginUsuario(usuario) async {
    final dbClient = await db.db;
    var us;
    var u = await dbClient.rawQuery(
      'SELECT * FROM Usuarios where email = ? and senha= ? LIMIT 1',
      [usuario.email, usuario.senha],
    );
    u.forEach((element) {
      us = element;
    });
    print(Usuario.fromJson(us));
  }

  cadastroUsuario(usuario) async {
    final dbClient = await db.db;
    var res = await dbClient.transaction((txn) async {
      await txn.rawInsert(
          'INSERT INTO Usuarios (nome, email, dataNasc, cpf, cep, endereco, numero, senha) VALUES(?,?,?,?,?,?,?,?)',
          [
            usuario.nome,
            usuario.email,
            usuario.dataNasc,
            usuario.cpf,
            usuario.cep,
            usuario.endereco,
            usuario.telefone,
            usuario.senha,
          ]);
    });
    return res;
  }

  adicionarTarefa() {}
  deletarTarefa() {}
  editarTarefa() {}
}
