import 'package:app_responsividade_studio/app_gastos/services/conta_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {

  ContaService _contaService = ContaService();
  late Future<List> _loadContas;

  @override
  void initState() {
    super.initState();
    _loadContas = _getContas();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 70),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            color: Colors.deepPurple,
            height: 175,
            child: FutureBuilder(
              builder: (context, snapshot) {
                return Card();
              },
              future: _contaService.gelAllContas(),
            ),
          )
        ],
      ),
    );
  }

  Future<List> _getContas() async{
    return await _contaService.gelAllContas();
  }
}
