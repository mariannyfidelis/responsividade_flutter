import 'package:app_responsividade_studio/app_gastos/models/conta.dart';
import 'package:flutter/material.dart';

class CadastrarTransacaoScreen extends StatefulWidget {
  const CadastrarTransacaoScreen({Key? key}) : super(key: key);

  @override
  _CadastrarTransacaoScreenState createState() => _CadastrarTransacaoScreenState();
}

class _CadastrarTransacaoScreenState extends State<CadastrarTransacaoScreen> {
  final _tituloController = TextEditingController();
  final _descricaoController = TextEditingController();
  final _valorController = TextEditingController();
  final _dataController = TextEditingController();
  late Conta _contaSelecionada;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
