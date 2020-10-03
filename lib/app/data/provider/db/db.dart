import 'package:sqflite/sqflite.dart';
import 'package:teste_verzel/app/utils/db_helper.dart';

class DB {
  //final DBHelper db = DBHelper();
  final DatabaseHelper db = DatabaseHelper();

  loginUsuario(usuario) {}
  cadastroUsuario(usuario) async {
    final dbClient = await db.db;
    var res = await dbClient.transaction((txn) async {
      await txn.rawQuery(
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
