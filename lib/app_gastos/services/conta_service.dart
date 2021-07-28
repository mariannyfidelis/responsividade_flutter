//Arquivo para realizar a conexão com o banco de dados
//Onde terá os métodos de CRUD
import 'package:app_responsividade_studio/app_gastos/models/conta.dart';
import 'package:app_responsividade_studio/app_gastos/utils/db_util.dart';

class ContaService{

  List<Conta> _listaContas = [];

  void addConta(Conta c){
    DBUtil.insertData("conta", c.toMap());
  }

  Future<List> gelAllContas() async{

     final dataList = await DBUtil.getData("conta");

     _listaContas = dataList.map((contas) => Conta.fromMap(contas)).toList();

     return _listaContas;
  }


}