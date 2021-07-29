class Conta {
  int? id;
  String? titulo;
  double? saldo;

  Conta({this.id, this.titulo, this.saldo}) ;

  Map<String, dynamic> toMap() {
    return {"id": id, "titulo": titulo, "saldo": saldo};
  }

  Conta.fromMap(Map<String, dynamic> map) {
    id = map['id'];
    titulo = map['titulo'];
    saldo = map['saldo'];
  }

  /*@override
  String toString() {
    return "Conta  [ Titulo:$titulo | Saldo:$saldo  ]";
  }*/
}
