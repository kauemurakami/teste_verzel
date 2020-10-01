class UsuarioTarefa {
  int id;
  int idTarefa;
  int idUsuario;

  UsuarioTarefa({id, idTarefa, idUsuario});

  UsuarioTarefa.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.idTarefa = json['idTarefa'];
    this.idUsuario = json['idUsuario'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['idTarefa'] = this.idTarefa;
    data['idUsuario'] = this.idUsuario;
    return data;
  }
}
