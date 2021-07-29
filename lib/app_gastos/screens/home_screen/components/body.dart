import 'package:app_responsividade_studio/app_gastos/models/conta.dart';
import 'package:app_responsividade_studio/app_gastos/screens/home_screen/components/card_contas.dart';
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
  late Future<List<Conta>> _loadContas;

  //List<Conta>? _contas;

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
            height: 175.0,
            child: FutureBuilder<List<Conta>>(
              future: _loadContas,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  if (snapshot.hasData) {
                    List<Conta>? _contas;
                    if (snapshot.data == null) {
                      _contas = [];
                    } else {
                      _contas = snapshot.data;
                    }
                    return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: _contas!.length,
                      padding: EdgeInsets.only(left: 16, right: 8),
                      itemBuilder: (context, index) {
                         return cardConta(
                           context,
                           _contas![index],
                         );

                      },
                    );
                  } else {
                    return Center(
                      child: Text(
                        "Erro!",
                        style: TextStyle(color: Color(0xFF07436A)),
                      ),
                    );
                  }
                } else {
                  return CircularProgressIndicator(color: Colors.blueGrey);
                }
              },
            ),
          ),
          Text("Restante da aplicação"),
          carrousel(context),
        ],
      ),
    );
  }

  Future<List<Conta>> _getContas() async {
    return await _contaService.gelAllContas();
  }

  // void atualizaContas(List<Conta>? data) {
  //   print("@@@@${data!.length}");
  //   for (int i = 0; i < data.length; i++) {
  //     print(data[i].titulo);
  //   }
  // }
}
