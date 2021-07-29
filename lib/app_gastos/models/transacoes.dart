class Transacao{
  int? id, tipo, conta;
  String? titulo, descricao;
  double? valor;

  Transacao({this.id, this.tipo, this.conta, this.titulo, this.descricao, this.valor});

  Transacao.fromMap(Map<String, dynamic> map){
    id = map["id"];
    tipo  = map["tipo"];
    conta = map["conta"];
    titulo = map["titulo"];
    descricao = map["descricao"];
    valor = map["valor"];
  }

  Map<String, dynamic> toMap(){
    return {
      "id": id,
      "tipo": tipo,
      "conta": conta,
      "titulo": titulo,
      "descricao": descricao,
      "valor": valor
    };
  }


}